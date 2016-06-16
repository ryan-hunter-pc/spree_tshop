# Since data-hooks are generated dynamically, we have to manually override each possible

Deface::Override.new(
  :name          => "replace_address_form",
  :virtual_path  => "spree/address/_form",
  :replace => '.inner', # can't use data hook here because it has erb in the value...
  :partial => 'tshop/address/form',
)

