require "spree_contact_form"
require "deface"

module SpreeContactForm

  class Engine < Rails::Engine

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end

end
