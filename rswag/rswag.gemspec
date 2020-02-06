$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ruby-openapi"
  s.version     = ENV['TRAVIS_TAG'] || '0.0.0'
  s.authors     = ["Emmanuel Ndangurura"]
  s.email       = ["endangurura@gmail.com"]
  s.homepage    = "https://github.com/endangurura/rswag"
  s.summary     = "Swagger tooling for Rails API's"
  s.description = "Generate beautiful API documentation, including a UI to explore and test operations, directly from your rspec integration tests"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*"] + [ "MIT-LICENSE" ]

  s.add_dependency 'ruby-openapi-specs', ENV['TRAVIS_TAG'] || '0.0.0'
  s.add_dependency 'ruby-openapi-api', ENV['TRAVIS_TAG'] || '0.0.0'
  s.add_dependency 'ruby-openapi-ui', ENV['TRAVIS_TAG'] || '0.0.0'
end
