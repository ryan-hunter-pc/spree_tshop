Deface::Override.new(
  :name          => "replace_product_show",
  :virtual_path  => "spree/products/show",
  :replace => "[data-hook='product_show']",
  :partial => 'tshop/products/show',
)
