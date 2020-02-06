require 'openapi/rswag/api/configuration'
require 'openapi/rswag/api/engine'

module Openapi
  module Rswag
    module Api
      def self.configure
        yield(config)
      end
  
      def self.config
        @config ||= Configuration.new
      end
    end
  end
end
