Deface::Override.new(
  :name          => "replace_search_results",
  :virtual_path  => "spree/products/index",
  :replace => "[data-hook='search_results']",
  :partial => 'tshop/products/search_results',
)
