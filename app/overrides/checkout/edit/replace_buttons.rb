##
# Replace the buttons div for all checkout steps with one state-aware partial.
# The original views repeated the div in each partial, so we have to override each one.
# 

# _address
Deface::Override.new(
  :name          => "replace_address_buttons",
  :virtual_path  => "spree/checkout/_address",
  :replace => "[data-hook='buttons']",
  :partial => 'tshop/checkout/buttons',
)

# _delivery
Deface::Override.new(
  :name          => "replace_delivery_buttons",
  :virtual_path  => "spree/checkout/_delivery",
  :replace => "[data-hook='buttons']",
  :partial => 'tshop/checkout/buttons',
)

# _payment
Deface::Override.new(
  :name          => "replace_payment_buttons",
  :virtual_path  => "spree/checkout/_payment",
  :replace => "[data-hook='buttons']",
  :partial => 'tshop/checkout/buttons',
)

# _confirm
Deface::Override.new(
  :name          => "replace_confirm_buttons",
  :virtual_path  => "spree/checkout/_confirm",
  :replace => "[data-hook='buttons']",
  :partial => 'tshop/checkout/buttons',
)

