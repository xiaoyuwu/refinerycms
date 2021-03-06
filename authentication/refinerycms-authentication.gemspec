# Encoding: UTF-8
require File.expand_path('../../core/lib/refinery/version', __FILE__)

version = Refinery::Version.to_s
rails_version = ['>= 4.0.2', '< 4.2']

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = %q{refinerycms-authentication}
  s.version           = version
  s.summary           = %q{Authentication extension for Refinery CMS}
  s.description       = %q{The default authentication extension for Refinery CMS}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Philip Arndt', 'Uģis Ozols', 'Rob Yurkowski']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- spec/*`.split("\n")

  s.add_dependency 'refinerycms-core',  version
  s.add_dependency 'actionmailer',      rails_version
  s.add_dependency 'devise',            ['~> 3.0', '>= 3.2.4']
  s.add_dependency 'friendly_id',       '>= 5.0.0.rc1'

  s.required_ruby_version = Refinery::Version.required_ruby_version
end
