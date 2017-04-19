# -*- encoding: utf-8 -*-
# stub: fileutils 0.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fileutils".freeze
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Minero Aoki".freeze]
  s.date = "2017-02-06"
  s.description = "Several file utility methods for copying, moving, removing, etc.".freeze
  s.email = [nil]
  s.homepage = "https://www.ruby-lang.org".freeze
  s.licenses = ["BSD-2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0dev".freeze)
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Several file utility methods for copying, moving, removing, etc.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
