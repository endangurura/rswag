TestApp::Application.routes.draw do
  resources :blogs, defaults: { :format => :json }

  mount Openapi::Rswag::Api::Engine => 'api-docs'
  mount Openapi::Rswag::Ui::Engine => 'api-docs'
end
