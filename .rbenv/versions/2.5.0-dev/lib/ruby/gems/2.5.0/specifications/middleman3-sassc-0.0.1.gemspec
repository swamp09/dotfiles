# -*- encoding: utf-8 -*-
# stub: middleman3-sassc 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman3-sassc".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brad Chen".freeze]
  s.date = "2015-10-23"
  s.description = "This gem lets you use SassC in Middleman 3. Note that Compass is not available.".freeze
  s.email = ["brad.chen@70ms.com".freeze]
  s.homepage = "https://github.com/70mainstreet/middleman3-sassc".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Use SassC in Middleman 3.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_runtime_dependency(%q<sassc>.freeze, ["< 2", ">= 1.7"])
      s.add_runtime_dependency(%q<sassc-rails>.freeze, ["< 2", ">= 1.1"])
      s.add_runtime_dependency(%q<middleman-core>.freeze, ["< 4.0.0", ">= 3.3.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<sassc>.freeze, ["< 2", ">= 1.7"])
      s.add_dependency(%q<sassc-rails>.freeze, ["< 2", ">= 1.1"])
      s.add_dependency(%q<middleman-core>.freeze, ["< 4.0.0", ">= 3.3.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<sassc>.freeze, ["< 2", ">= 1.7"])
    s.add_dependency(%q<sassc-rails>.freeze, ["< 2", ">= 1.1"])
    s.add_dependency(%q<middleman-core>.freeze, ["< 4.0.0", ">= 3.3.0"])
  end
end
