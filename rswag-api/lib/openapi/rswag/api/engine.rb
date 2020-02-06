require 'openapi/rswag/api/middleware'

module Openapi
  module Rswag
    module Api
      class Engine < ::Rails::Engine
        isolate_namespace Openapi::Rswag::Api
  
        initializer 'rswag-api.initialize' do |app|
          middleware.use Openapi::Rswag::Api::Middleware, Openapi::Rswag::Api.config
        end
      end
    end
  end
end
