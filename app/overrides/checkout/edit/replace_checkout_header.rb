Deface::Override.new(
  :name          => "replace_checkout_header",
  :virtual_path  => "spree/checkout/edit",
  :replace => "[data-hook='checkout_header']",
  :partial => 'tshop/checkout/checkout_header',
)
