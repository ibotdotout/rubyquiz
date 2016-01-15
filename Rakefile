require 'rake/testtask'
require 'pullreview/coverage_reporter'

Rake::TestTask.new do |t|
  SimpleCov.command_name 'Unit Tests'
  PullReview::CoverageReporter.start
  t.pattern = "test/*_test.rb"
end
