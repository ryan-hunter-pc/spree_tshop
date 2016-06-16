Deface::Override.new(
  :name          => "replace_products",
  :virtual_path  => "spree/products/index",
  :replace => "[data-hook='homepage_products']",
  :partial => 'tshop/products/index',
)
