# -*- encoding: utf-8 -*-
# stub: dbm 0.5.1 ruby lib
# stub: ext/dbm/extconf.rb

Gem::Specification.new do |s|
  s.name = "dbm".freeze
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Yukihiro Matsumoto".freeze]
  s.date = "2017-02-08"
  s.description = "Provides a wrapper for the UNIX-style Database Manager Library".freeze
  s.email = ["matz@ruby-lang.org".freeze]
  s.extensions = ["ext/dbm/extconf.rb".freeze]
  s.files = ["ext/dbm/extconf.rb".freeze]
  s.homepage = "https://www.ruby-lang.org".freeze
  s.licenses = ["BSD-2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0dev".freeze)
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Provides a wrapper for the UNIX-style Database Manager Library".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
