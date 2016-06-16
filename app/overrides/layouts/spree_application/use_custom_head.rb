Deface::Override.new(
  :name         => "use_custom_head",
  :virtual_path => "spree/layouts/spree_application",
  :text         => "<%= render partial: 'tshop/shared/head' %>",
  :replace      => "[data-hook='inside_head'] > erb[loud]:contains('spree/shared/head')",
)
