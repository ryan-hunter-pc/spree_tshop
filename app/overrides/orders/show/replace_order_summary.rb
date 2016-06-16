Deface::Override.new(
  :name          => "replace_order_summary",
  :virtual_path  => "spree/orders/show",
  :replace => "#order_summary[data-hook]",
  :partial => 'tshop/orders/order_summary',
)
