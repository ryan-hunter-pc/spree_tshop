module Tshop
  module FrontendHelper

    def icon_link_to(text, target, opt={})
      # parse options and prepare to pass onto link_to
      opt[:icon] ||= 'image'
      opt[:icon_class] ||= ''
      opt[:text_class] ||= ''
      opt[:position] ||= :before
      opt[:nospace] ||= false
      link_opt = opt.except(:icon, :icon_class, :text_class, :position, :nospace)
      
      # build link content
      link_content_items = [fa_icon(opt[:icon], class: opt[:icon_class])]
      link_content_items << "&nbsp;" unless opt[:nospace]
      link_content_items << "<span class=\"#{opt[:text_class]}\">#{text}</span>"
      link_content_items.reverse! if opt[:position] == :after
      link_content = link_content_items.join('').html_safe

      link_to link_content, target, link_opt
    end
    
    def tshop_checkout_progress(numbers: false)
      ##
      # This is to be used in place of the Spree checkout_progress helper.
      # It works exactly the same way, with just a few minor changes:
      # - Slightly refactored the state "awareness"
      # - Changed styles (and added icons)
      # - Removed 'complete' from the progress bar
            
      states = @order.checkout_steps

      # 'complete' is an internal state, don't show it in UI progress bar
      states.delete("complete")
      
      items = states.each_with_index.map do |state, i|
        text = Spree.t("order_state.#{state}").titleize
        text.prepend("#{i.succ}. ") if numbers
        text = checkout_state_icon(state) + content_tag('span', text)

        css_classes = []
        current_index = states.index(@order.state)
        state_index = states.index(state)

        if state_index < current_index
          css_classes << 'completed'
          text = link_to text, checkout_state_path(state)
        end

        css_classes << 'next' if state_index == current_index + 1
        css_classes << 'active' if state == @order.state
        css_classes << 'first' if state_index == 0
        css_classes << 'last' if state_index == states.length - 1
        # No more joined classes. IE6 is not a target browser.
        
        # Hack: Stops <a> being wrapped round previous items twice.
        if state_index < current_index
          content_tag('li', text.html_safe, class: css_classes.join(' '), style: "width:#{100/states.length}%;")
        else
          content_tag('li', content_tag('a', text.html_safe), class: css_classes.join(' '), style: "width:#{100/states.length}%;")
        end
      end

      content_tag('ul', raw(items.join("\n")), class: 'progress-steps orderStep orderStepLook2', id: "checkout-step-#{@order.state}")
    end

    def checkout_state_icon(state)
      icon_map = {
        address: 'map-marker',
        delivery: 'truck',
        payment: 'credit-card',
        confirm: 'check',
      }
      fa_icon(icon_map[:"#{state}"]).html_safe
    end
    
    def checkout_continue_button(outside_form: false, btn_block: false)
      next_state_button_text_map = {
        delivery: 'Continue to shipping ' + fa_icon('arrow-right'),
        payment: 'Continue to payment ' + fa_icon('chevron-right'),
        confirm:  'Review your order ' + fa_icon('chevron-right'),
        complete:  'Submit Order ' + fa_icon('check'),
      }
      
      # Use bootstrap large button by default
      classes = ['btn', 'btn-lg', 'btn-success']
      classes += ['btn-block', 'mb20'] if btn_block
      # add class if outside form, so we can jQuery submit()
      classes << 'checkout_button_outside_form' if outside_form
      
      button_tag class: classes.join(' ') do
        next_state_button_text_map[:"#{checkout_next_state}"].html_safe
      end
    end
    
    def checkout_back_button
      previous_state_button_map = {
        cart:  { text: 'Back to cart', icon: 'shopping-cart', target: cart_path }, # if state is address, previous will return 'complete'
        address: { text: 'Back to address', icon: 'arrow-left', target: checkout_state_path(state: :address) },
        delivery:  { text: 'Back to shipping', icon: 'arrow-left', target: checkout_state_path(state: :delivery) },
        payment:  { text: 'Back to payment', icon: 'arrow-left', target: checkout_state_path(state: :payment) },
      }
      button = previous_state_button_map[:"#{checkout_previous_state}"]
      button[:content] = "#{fa_icon(button[:icon])} #{button[:text]}".html_safe
      link_to button[:content], button[:target], class: "btn btn-default"
    end

    def checkout_next_state(current_state: @order.state, states: @order.checkout_steps)
      states[states.index(current_state) + 1]
    end

    def checkout_previous_state(current_state: @order.state, states: @order.checkout_steps)
      current_index = states.index(current_state)
      if current_index == 0
        'cart'
      else
        states[current_index - 1]
      end
    end

    def tshop_taxons_tree(root_taxon, current_taxon, max_level = 1)
      # <ul class="nav nav-list">
      #     <li><a> Watches </a></li>
      #     <li><a> Accessories </a></li>
      #     <li><a> Clothing </a></li>
      #     <li><a> Jackets </a></li>
      #     <li><a> Sweaters </a></li>
      #     <li><a> Shirts </a></li>
      #     <li><a> Offers Zone </a></li>
      # </ul>
      return '' if max_level < 1 || root_taxon.leaf?
      content_tag :ul, class: 'nav nav-list' do
        taxons = root_taxon.children.map do |taxon|
          css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'current_taxon text-success' : ''
          content_tag :li, class: css_class do
            link_to(taxon.name, seo_url(taxon)) + taxons_tree(taxon, current_taxon, max_level - 1)
          end
        end
        safe_join(taxons, "\n")
      end
    end

    def taxon_image_tag(taxon, img_opts={})
      taxon_image = taxon.icon
      until taxon.nil? || !taxon.icon_file_name.nil?
        taxon = taxon.parent
      end
      if taxon
        image_tag taxon.icon.url(:original), img_opts
      else
        nil
      end
    end

  end
end

