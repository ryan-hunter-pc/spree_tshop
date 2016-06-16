# Deface::Override.new(

  ## Name of this override. This should match the filename
  # :name          => "spree_deface_example",
  
  ## Path to the view to be affected
  # :virtual_path  => "spree/checkout/registration",
  
  ## CONTENT
  # Below are three ways to define the content for this override.
    # :text     => "<p>Registration is the future!</p>",
    # :partial  => "path/to/partial",
    # :template => "path/to/template",  
  

  ## ACTIONS
  # Below are the actions available to Deface overrides.
  # For each, the key is the action that performs a certain task,
  # and the value is the CSS3 selector for the target element(s) of the action.
  # 
  # Wherever possible, use id and [data-hook] for the selectors,
  # as these are officially supported by Spree, and are the most likely to be upgrade-proof.
  # 
  # Most replaceable elements in the views will either have:
  #   - An ID and an empty [data-hook] attribute
  #   - A [data-hook] attribute with a value
  #   - An ID and an un-matching [data-hook] attribue
  #   
  # IMPORTANT: These actions are performed BEFORE the erb tags are evaluated.
  # This means that you can target them, too. To do so, use these selectors:
  #   "erb[loud]:contains('t(:products)')" #=> targets <%= Spree.t(:products) %>
  #   "erb[silent]:contains('elsif')" #=> targets <% elsif %>
  #   
  
    # # Removes all elements that match the supplied selector
    # :remove => "div#selector",

    # # Replaces all elements that match the supplied selector, with the content supplied
    # :replace => "div#selector",
    
    # # Replaces the contents of all elements that match the supplied selector
    # :replace_contents => "div#selector",

    # # Surrounds all elements that match the supplied selector, expects replacement markup to contain <%= render_original %> placeholder
    # :surround => "div#selector",

    # # Surrounds the contents of all elements that match the supplied selector, expects replacement markup to contain <%= render_original %> placeholder
    # :surround_contents => "div#selector",

    # # Inserts after all elements that match the supplied selector
    # :insert_after => "div#selector",

    # # Inserts before all elements that match the supplied selector
    # :insert_before => "div#selector",

    # # Inserts inside all elements that match the supplied selector, as the first child
    # :insert_top => "div#selector",

    # # Inserts inside all elements that match the supplied selector, as the last child
    # :insert_bottom => "div#selector",

    # # Sets attributes on all elements that match the supplied selector, replacing existing attribute value if present or adding if not. Expects :attributes option to be passed.
    # :set_attributes => "div#selector",

    # # Appends value to attributes on all elements that match the supplied selector, adds attribute if not present. Expects :attributes option to be passed.
    # :add_to_attributes => "div#selector",

    # # Removes value from attributes on all elements that match the supplied selector. Expects :attributes option to be passed.
    # :remove_from_attributes => "div#selector",

# )
