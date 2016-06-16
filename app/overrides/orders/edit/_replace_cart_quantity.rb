Deface::Override.new(
  :name          => "replace_cart_quantity",
  :virtual_path  => "spree/orders/_line_item",  
  :set_attributes => '[data-hook="cart_item_quantity"]',
  :attributes => { class: "cart-item-quantity" },
)
