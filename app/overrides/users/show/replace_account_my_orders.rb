Deface::Override.new(
  :name          => "replace_account_my_orders",
  :virtual_path  => "spree/users/show",
  :replace => "[data-hook='account_my_orders']",
  :partial => 'tshop/users/account_my_orders',
)
