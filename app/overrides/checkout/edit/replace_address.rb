Deface::Override.new(
  :name          => "replace_address",
  :virtual_path  => "spree/checkout/_address",
  :replace => ".row",
  :partial => 'tshop/checkout/address',
)
