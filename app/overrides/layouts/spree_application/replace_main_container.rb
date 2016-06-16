Deface::Override.new(
  :name          => "replace_main_container",
  :virtual_path  => "spree/layouts/spree_application",
  :partial     => 'tshop/layouts/main_container',
  :replace => "[data-hook='body'] > .container",
)
