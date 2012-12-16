# encoding: UTF-8

# Application wide requirements
require 'sequel'
require 'sequel_plus'

require 'multi_json'

case RUBY_PLATFORM
when "ruby"
  require 'sqlite3'
when "java"
  require 'jdbc/sqlite3'
  require 'java'
end

require 'yaml'
require 'logger'
require 'thor'

# Set the YAML engine specifically to 'psych' when under JRuby
if RUBY_PLATFORM == "java"
  ::YAML::ENGINE.yamler = 'psych'
end

# NOTE: Set RAILS_ENV to 'production' for ActiveRecord. Affects the database to use.
# Change this to 'development' while working on the gem itself, or set it in the
# environment prefixed to commands, in order to gain access to testing gems.
# NOTE: Set RAILS_ENV to 'production' for ActiveRecord. Affects the database to use.
# Change this to 'development' while working on the gem itself, or set it in the
# environment prefixed to commands, in order to gain access to testing gems.
ENV['RAILS_ENV'] ||= 'development'

# Load the db config and create a connectoid. Make an ivar so its shared throughout the application
  DB = Sequel.connect('jdbc:sqlite:db/dtf-sequel.sqlite3')

# Load all the models
Dir["#{File.join(File.dirname(__FILE__), '../../app/models/*.rb')}"].each do |model|
  load "#{model}"
end

