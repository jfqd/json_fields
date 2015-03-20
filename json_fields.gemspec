# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "json_fields"
  s.version     = "0.0.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jason Stirk"]
  s.email       = ["jstirk@oobleyboo.com"]
  s.homepage    = "https://github.com/aurorasoft/json_fields"
  s.summary     = "Allow fields to be added dynamically and stored in a single field as JSON data"
  s.description = "Rails plugin to allow fields to be added dynamically (and at run time) which are stored in a single field as JSON data"

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  s.require_paths = ["lib"]
  
  s.add_dependency "json", "~> 1.8.2"
end