Deface::Override.new(
  :name          => "remove_taxon_children",
  :virtual_path  => "spree/taxons/show",
  # :template => "tshop/taxons/show/sidebar",  
  :remove => '[data-hook="taxon_children"]',
)
