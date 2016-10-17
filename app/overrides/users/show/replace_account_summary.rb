Deface::Override.new(
  :name          => "replace_account_summary",
  :virtual_path  => "spree/users/show",
  :replace => "[data-hook='account_summary']",
  :partial => 'tshop/users/account_summary',
)
