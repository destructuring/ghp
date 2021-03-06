# -*- encoding: utf-8 -*-
#
$:.push File.expand_path("../lib", __FILE__)
require "ghp/version"

Gem::Specification.new do |s|
  s.name        = "ghp"
  s.version     = GHP::Version.to_s
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Nghiem", "Tom Bombadil"]
  s.email       = ["nghidav@gmail.com", "amanibhavam@destructuring.org"]
  s.homepage    = "https://github.com/destructuring/ghp"
  s.summary     = "git home page"
  s.description = "git home page"
  s.date        = %q{2013-01-26}
  s.executables   = [ "ghp" ]
  s.require_paths = ["lib"]
  s.files = %w(LICENSE LICENSE.nanoc VERSION README.md) + Dir.glob("lib/**/*") + Dir.glob("libexec/**/*") + Dir.glob("sbin/**/*")

  s.add_runtime_dependency("nanoc", "~> 3.4.3")
  s.add_runtime_dependency(%q<redcarpet>)
  s.add_runtime_dependency(%q<ghp-bootstrap>)
  s.add_runtime_dependency(%q<pygments.rb>)
  s.add_runtime_dependency(%q<rocco>)
  s.add_runtime_dependency(%q<ronn>)
end
