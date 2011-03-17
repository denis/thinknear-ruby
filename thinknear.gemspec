# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thinknear}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Denis Barushev"]
  s.date = %q{2011-03-17}
  s.email = %q{barushev@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/think_near.rb",
    "lib/think_near/.client.rb.swn",
    "lib/think_near/.client.rb.swo",
    "lib/think_near/category.rb",
    "lib/think_near/client.rb",
    "lib/think_near/connection.rb",
    "lib/think_near/draw.rb",
    "lib/think_near/endpoint.rb",
    "lib/think_near/offer.rb",
    "lib/thinknear.rb",
    "spec/spec_helper.rb",
    "spec/think_near/category_spec.rb",
    "spec/think_near/client_spec.rb",
    "spec/think_near/connection_spec.rb",
    "spec/think_near/draw_spec.rb",
    "spec/think_near/endpoint_spec.rb",
    "spec/think_near/offer_spec.rb",
    "thinknear.gemspec"
  ]
  s.homepage = %q{https://github.com/ThinkNear/thinknear-ruby}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A ThinkNear Ruby Client}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/think_near/category_spec.rb",
    "spec/think_near/client_spec.rb",
    "spec/think_near/connection_spec.rb",
    "spec/think_near/draw_spec.rb",
    "spec/think_near/endpoint_spec.rb",
    "spec/think_near/offer_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<oauth>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<oauth>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

