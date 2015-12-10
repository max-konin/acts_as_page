$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mongoid_acts_as_page"
  s.version     = ActsAsPage::VERSION
  s.authors     = ["Max Konin"]
  s.email       = ["maxim21214@gmail.com"]
  s.homepage    = "https://github.com/max-konin/acts_as_page"
  s.summary     = "Acts as page for mongoid models"
  s.description = "Acts as page for mongoid models"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.mb"]
  s.test_files = Dir["spec/**/*"]
  s.add_dependency 'mongoid'
  s.add_dependency 'mongoid_slug'
  s.add_dependency 'mongoid_orderable'
end
