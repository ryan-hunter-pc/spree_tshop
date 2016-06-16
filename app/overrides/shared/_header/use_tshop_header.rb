Deface::Override.new(
  :name         => "use_tshop_header",
  :virtual_path => "spree/shared/_header",
  :partial      => "tshop/shared/header",
  :replace      => "#spree-header",
)
