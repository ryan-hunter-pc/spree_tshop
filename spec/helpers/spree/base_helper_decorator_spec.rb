require 'spec_helper'

describe Spree::BaseHelper do
  describe "#orig_display_price" do
    let(:current_currency) { "USD" }
    let(:variant) { FactoryGirl.create(:variant, price: 9.99, sale_price: 7.99) }

    it "returns the original display price when product has a sale_price" do
      result = orig_display_price(variant)

      expect(result).to eq "$9.99"
    end
  end
end