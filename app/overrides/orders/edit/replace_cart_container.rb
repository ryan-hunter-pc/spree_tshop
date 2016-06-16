Deface::Override.new(
  :name          => "replace_cart_container",
  :virtual_path  => "spree/orders/edit",
  :replace => "[data-hook='cart_container']",
  :partial => 'tshop/orders/cart_container',
)
