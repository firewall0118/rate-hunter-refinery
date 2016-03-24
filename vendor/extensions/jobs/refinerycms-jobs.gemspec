# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-jobs'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Jobs extension for Refinery CMS'
  s.date              = '2016-03-23'
  s.summary           = 'Jobs extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.authors           = '..'
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.1.5'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.5'
end