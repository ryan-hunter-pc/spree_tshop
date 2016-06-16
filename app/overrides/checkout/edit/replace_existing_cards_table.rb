Deface::Override.new(
  :name          => "replace_existing_cards_table",
  :virtual_path  => "spree/checkout/_payment",
  :replace => "#existing_cards",
  :partial => 'tshop/checkout/payment_existing_cards',
)
