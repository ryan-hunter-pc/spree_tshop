require_relative '../../app/helpers/tshop/frontend_helper.rb'

module SpreeTshop
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_tshop'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    initializer 'spree_tshop.setup_helpers' do |app|
      ActiveSupport.on_load( :action_view ){ include Tshop::FrontendHelper }
    end
  end
end
