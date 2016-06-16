Deface::Override.new(
  :name          => "remove_sidebar",
  :virtual_path  => "spree/products/index",
  :remove => "[data-hook='homepage_sidebar_navigation']",
)
