require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'coverband', path: '/Users/karlbaum/workspace/coverband'
  gem 'resque'
end

require 'resque'
require 'resque/tasks'
require 'coverband'
require 'coverband/utils/tasks'
require './job'

task :environment do
  puts "Environment task"
end

desc "Enqueue workers and run resque"
task :enqueue_workers do
  10.times { Resque.enqueue(Job) }
  ENV['QUEUE'] ='resque_coverband'
  Rake.application['resque:work'].invoke
end


