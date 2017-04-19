# -*- encoding: utf-8 -*-
# stub: oulu 0.12.33 ruby lib

Gem::Specification.new do |s|
  s.name = "oulu".freeze
  s.version = "0.12.33"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["machida".freeze]
  s.date = "2017-04-03"
  s.description = "Sass mixins.".freeze
  s.email = ["machidanohimitsu@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Sass mixins.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_runtime_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
