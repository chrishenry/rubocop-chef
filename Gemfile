source 'https://rubygems.org'

gemspec

group :test do
  gem 'codeclimate-test-reporter', require: false
end

local_gemfile = 'Gemfile.local'

if File.exist?(local_gemfile)
  eval(File.read(local_gemfile)) # rubocop:disable Lint/Eval
end

gem 'pry'