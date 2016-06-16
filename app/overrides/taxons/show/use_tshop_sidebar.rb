Deface::Override.new(
  :name         => "use_tshop_sidebar",
  :virtual_path => "spree/taxons/show",
  :partial      => "tshop/taxons/sidebar",  
  :replace      => '[data-hook="taxon_sidebar_navigation"]',
)
