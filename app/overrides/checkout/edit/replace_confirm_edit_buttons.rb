# Replace 4 instances of (Edit) links with icon buttons

Deface::Override.new(
  :name          => "replace_confirm_edit_buttons_address",
  :virtual_path  => "spree/shared/_order_details",
  :replace => "erb[loud]:contains('checkout_state_path(:address)')",
  :text => '<%= link_to fa_icon("pencil").html_safe, checkout_state_path(:address), class: "btn btn-sm btn-info" unless order.completed? %>',
)

Deface::Override.new(
  :name          => "replace_confirm_edit_buttons_delivery",
  :virtual_path  => "spree/shared/_order_details",
  :replace => "erb[loud]:contains('checkout_state_path(:delivery)')",
  :text => '<%= link_to fa_icon("pencil").html_safe, checkout_state_path(:delivery), class: "btn btn-sm btn-info" unless order.completed? %>',
)

Deface::Override.new(
  :name          => "replace_confirm_edit_buttons_payment",
  :virtual_path  => "spree/shared/_order_details",
  :replace => "erb[loud]:contains('checkout_state_path(:payment)')",
  :text => '<%= link_to fa_icon("pencil").html_safe, checkout_state_path(:payment), class: "btn btn-sm btn-info" unless order.completed? %>',
)

