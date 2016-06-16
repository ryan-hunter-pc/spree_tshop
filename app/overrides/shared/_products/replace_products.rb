# First, add correct class to products .row
# Deface::Override.new(
#   :name => "edit_products_class",
#   :virtual_path => "spree/shared/_products",
#   :set_attributes => "#products[data-hook]",
#   :attributes => { class: "row categoryProduct xsResponse clearfix" },
# )

# Replace product list item
Deface::Override.new(
  :name         => "replace_products",
  :virtual_path => "spree/shared/_products",
  :partial      => "tshop/shared/products",
  :replace      => '#products[data-hook]',
)
