# Don't need sidebar
Deface::Override.new(
  :name          => "home_index_remove_sidebar",
  :virtual_path  => "spree/home/index",
  :template => "tshop/home/index",
  :remove => "div[data-hook='homepage_sidebar_navigation']",
)

# Use custom template for home page
Deface::Override.new(
  :name          => "home_index_replace",
  :virtual_path  => "spree/home/index",
  :template => "tshop/home/index",
  :replace => "div[data-hook='homepage_products']",
)
