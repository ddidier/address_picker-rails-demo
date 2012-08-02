
require 'rbconfig'

source 'http://rubygems.org'

HOST_OS = RbConfig::CONFIG['host_os']
THIRD_PARTY = "#{File.expand_path(__FILE__)}/../../../Third-Party"



# ----------------------------------------------------------------------------------------------------------------------
# commons
# ----------------------------------------------------------------------------------------------------------------------

gem 'address_picker-rails',               :path => "#{THIRD_PARTY}/address_picker-rails"

gem 'jquery-rails',         '~> 2.0.0'
gem 'rails',                '~> 3.2.0'
gem 'sqlite3'
gem 'simple_form',          '~> 2.0.0'




# ----------------------------------------------------------------------------------------------------------------------
# assets
# ----------------------------------------------------------------------------------------------------------------------

group :assets do
  gem 'bootstrap-sass',   '~> 2.0.0'
  gem 'coffee-rails',     '~> 3.2.0'
  gem 'sass-rails',       '~> 3.2.0'
  gem 'therubyracer',     '~> 0.10.0',  :platform => :ruby
  gem 'uglifier',         '~> 1.2.0'
  gem 'jquery-ui-themes', '~> 0.0.0'
end



# ----------------------------------------------------------------------------------------------------------------------
# development
# ----------------------------------------------------------------------------------------------------------------------

group :development do
  gem 'guard',            '~> 1.2.0'
  gem 'guard-bundler',    '~> 1.0.0'
  gem 'guard-livereload', '~> 1.0.0'
  gem 'guard-rails',      '~> 0.1.0'
  gem 'guard-rspec',      '~> 1.2.0'
  gem 'guard-spork',      '~> 1.1.0'
  gem 'spork',            ' > 1.0.0.rc'

  case HOST_OS
    when /darwin/i
      gem 'growl'
      gem 'rb-fsevent'
    when /linux/i
      gem 'libnotify'
      gem 'rb-inotify'
    when /mswin|windows/i
      gem 'rb-fchange'
      gem 'rb-notifu'
      gem 'win32console'
  end

  #if HOST_OS =~ /linux/i
  #  gem 'therubyracer',   '~> 0.10.0'
  #end
end



# ----------------------------------------------------------------------------------------------------------------------
# test
# ----------------------------------------------------------------------------------------------------------------------

group :test do
end


# ----------------------------------------------------------------------------------------------------------------------
# development & test
# ----------------------------------------------------------------------------------------------------------------------

group :development, :test do
  gem 'quiet_assets',     '~> 1.0.0'
  gem 'rspec-rails',      '~> 2.11.0'
  gem 'shoulda-matchers', '~> 1.2.0'
end
