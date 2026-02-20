Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'activerecord-redshift-adapter'
  s.version = '1.0.3'
  s.summary = 'Amazon Redshift adapter for ActiveRecord '
  s.description = 'Amazon Redshift adapter for ActiveRecord 8.x (including 8.1.2+).'
  s.license = 'MIT'

  s.author = ['Nancy Foen', 'Minero Aoki', 'iamdbc', 'Quentin Rousseau', 'Johan Le Bray', "Tristan O'Neil"]
  s.email = 'tristan.oneil@charitywater.org'
  s.homepage = 'https://github.com/charitywater/activerecord-redshift-adapter'

  s.files = Dir.glob(['LICENSE', 'README.md', 'lib/**/*.rb'])
  s.require_path = 'lib'

  s.required_ruby_version = '>= 3.0'
  s.add_runtime_dependency 'activerecord', '~> 8.0'
  s.add_runtime_dependency 'pg', '~> 1.0'
end
