Deface::Override.new(
  :name          => "use_tshop_footer",
  :virtual_path  => "spree/layouts/spree_application",
  :partial       => "tshop/shared/footer",
  :insert_bottom => "[data-hook='body']",
)
