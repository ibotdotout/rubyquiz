require 'rake/testtask'
require "codeclimate-test-reporter"

Rake::TestTask.new do |t|
  SimpleCov.command_name 'Unit Tests'
  CodeClimate::TestReporter.start
  t.pattern = "test/*_test.rb"
end
