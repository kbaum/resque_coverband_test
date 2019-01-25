require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'coverband', path: '/Users/karlbaum/workspace/coverband'
  gem 'resque'
  gem 'pry-byebug'
end

require 'resque'
require 'resque/tasks'
require 'coverband'
require 'coverband/utils/tasks'
require './job'

ENV["RUN_AT_EXIT_HOOKS"]='1'
task :environment do
  puts "Environment task"
end

desc "Enqueue workers and run resque"
task :enqueue_workers do
  1.times { Resque.enqueue(Job) }
  ENV['QUEUE'] ='resque_coverband'
  Rake.application['resque:work'].invoke
end

Resque.after_fork do |job|
  Coverband.start
end

