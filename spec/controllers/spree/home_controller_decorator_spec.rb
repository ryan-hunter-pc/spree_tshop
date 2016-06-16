require 'spec_helper'

describe Spree::HomeController do
  describe 'GET #sale' do
    it "sets @products to all products which have a sale_price" do
      variant1 = FactoryGirl.create(:variant, sale_price: 0.99)
      variant2 = FactoryGirl.create(:variant)
      variant3 = FactoryGirl.create(:variant, sale_price: 1.99)

      spree_get :sale

      expect(assigns(:products).to_a).to eq [variant1.product, variant3.product]
    end
  end
end
