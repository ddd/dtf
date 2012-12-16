#!/usr/bin/env rake
# encoding: UTF-8

require "bundler/gem_tasks"
require 'erb'
require 'yaml'
require 'sequel'
require 'jdbc/sqlite3'
require 'java'
require 'tasks/sequel'

task :environment do
  DB = Sequel.connect('jdbc:sqlite:db/dtf-sequel.sqlite3')
end

task :test do
  Rake::Task['cover_me:report'].invoke
end

task :spec do
  Rake::Task['cover_me:report'].invoke
end

namespace :dtf do

  desc "Install DTF thor tasks"
  task :install do
    require 'dtf'
    puts "Installing DTF tasks"
    FileUtils.cp(Dir.glob("#{File.join("#{Gem.loaded_specs['dtf'].gem_dir}", 'lib/tasks/*')}"), 'lib/tasks/')
  end
end

