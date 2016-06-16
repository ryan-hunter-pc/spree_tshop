module Spree
  module BaseHelper

    def orig_display_price(product_or_variant)
      product_or_variant.orig_price_in(current_currency).display_price.to_html
    end

  end
end
