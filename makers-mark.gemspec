# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{makers-mark}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Nakajima"]
  s.date = %q{2009-04-05}
  s.default_executable = %q{mark}
  s.email = %q{patnakajima@gmail.com}
  s.executables = ["mark"]
  s.files = %w[
    bin/mark
    lib/makers-mark
    lib/makers-mark/generator.rb
    lib/makers-mark.rb
    vendor/albino.rb
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Generate syntax highlighted HTML using Markdown/Lighthouse conventions.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rtomayko-rdiscount>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
    else
      s.add_dependency(%q<rtomayko-rdiscount>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
    end
  else
    s.add_dependency(%q<rtomayko-rdiscount>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
  end
end
