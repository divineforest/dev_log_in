$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dev_log_in/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dev_log_in"
  s.version     = DevLogIn::VERSION
  s.authors     = ["divineforest"]
  # s.email       = ["TODO: Your email"]
  s.homepage    = "http://github.com/divineforest/dev_log_in"
  s.summary     = "Type /dev/log_in/john in browser to log in as john (in env.development?)"
  s.description = "Log in by typing myproject.local/dev/log_in/john or myproject.local/dev/log_in/admin to easily switch between users in development env"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.textile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"

  s.add_development_dependency "sqlite3"
end
