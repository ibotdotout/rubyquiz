require 'rake/testtask'
require 'pullreview/coverage_reporter'
require 'simplecov'

Rake::TestTask.new do |t|
  SimpleCov.command_name 'minitest'
  PullReview::CoverageReporter.start
  t.pattern = "test/*_test.rb"
end
