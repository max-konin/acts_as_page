$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_page"
  s.version     = ActsAsPage::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActsAsPage."
  s.description = "TODO: Description of ActsAsPage."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]
  s.add_dependency "rails", "~> 4.0.6"
end
