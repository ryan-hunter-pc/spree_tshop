require 'spec_helper'

describe Spree::Variant do
  describe "#price_in" do
    it "returns the sale price if it is present" do
      variant = FactoryGirl.create(:variant, sale_price: 8.99)
      expected = Spree::Price.new(variant: variant, currency: "USD", amount: variant.sale_price)

      result = variant.price_in("USD")

      expect(result.variant_id).to eq expected.variant_id
      expect(result.amount.to_f).to eq expected.amount.to_f
      expect(result.currency).to eq expected.currency
    end

    it "returns the normal price if it is not on sale" do
      variant = FactoryGirl.create(:variant, price: 15.99)
      expected = Spree::Price.new(variant: variant, currency: "USD", amount: 15.99)

      result = variant.price_in("USD")

      expect(result.variant_id).to eq expected.variant_id
      expect(result.amount.to_f).to eq expected.amount.to_f
      expect(result.currency).to eq expected.currency
    end
  end
end