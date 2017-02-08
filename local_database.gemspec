$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "local_database/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "local_database"
  s.version     = LocalDatabase::VERSION
  s.authors     = ["Blink22"]
  s.email       = ["aly.kafory@blink22.com"]
  s.homepage    = "https://github.com/alykafoury/localDatabase"
  s.summary     = "Solution for database.yml"
  s.description = "Uses database.local.yml instead of database.yml in test and development environment"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
