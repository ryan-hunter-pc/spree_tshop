module Spree
  Product.class_eval do

    def self.available(available_on = nil, currency = nil)
      joins(:master => :prices, variants: :stock_items).where("#{StockItem.quoted_table_name}.count_on_hand > 0 AND #{Product.quoted_table_name}.available_on <= ?", available_on || Time.now).uniq
    end
    search_scopes << :available

  end
end
