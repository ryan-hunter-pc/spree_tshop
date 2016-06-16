module Spree
  ProductsController.class_eval do

    def show
      @variants = @product.variants_including_master.active(current_currency).includes([:option_values, :images])
      @product_properties = @product.product_properties.includes(:property)
      @taxon = Spree::Taxon.find(params[:taxon_id]) if params[:taxon_id]
      redirect_if_legacy_path
      
      # Added by RH
      # allow AJAX requests
      if request.xhr?
        respond_to do |format|
          format.js { render 'tshop/products/show.js.erb' }
        end
      end
    end

  end
end
