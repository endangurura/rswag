require 'openapi/rswag/ui/configuration'
require 'openapi/rswag/ui/engine'

module Openapi
  module Rswag
    module Ui
      def self.configure
        yield(config)
      end
  
      def self.config
        @config ||= Configuration.new
      end
    end
  end
end
