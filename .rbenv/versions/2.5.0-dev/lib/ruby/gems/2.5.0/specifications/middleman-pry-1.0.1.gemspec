# -*- encoding: utf-8 -*-
# stub: middleman-pry 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-pry".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Kvalheim".freeze]
  s.date = "2016-03-22"
  s.email = ["Andrew@Kvalhe.im".freeze]
  s.homepage = "https://github.com/AndrewKvalheim/middleman-pry".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Use Pry as the Middleman console.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman>.freeze, ["< 5", ">= 3.3"])
      s.add_runtime_dependency(%q<pry>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_development_dependency(%q<travis>.freeze, [">= 0"])
      s.add_development_dependency(%q<websocket-native>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    else
      s.add_dependency(%q<middleman>.freeze, ["< 5", ">= 3.3"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.9"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_dependency(%q<travis>.freeze, [">= 0"])
      s.add_dependency(%q<websocket-native>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<middleman>.freeze, ["< 5", ">= 3.3"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.9"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_dependency(%q<travis>.freeze, [">= 0"])
    s.add_dependency(%q<websocket-native>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
  end
end
