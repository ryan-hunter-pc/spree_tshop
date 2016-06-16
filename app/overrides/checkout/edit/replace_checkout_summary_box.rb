Deface::Override.new(
  :name          => "replace_checkout_summary_box",
  :virtual_path  => "spree/checkout/edit",
  :replace => "[data-hook='checkout_summary_box']",
  :partial => 'tshop/checkout/checkout_summary_box',
)
