require 'rake/testtask'
require 'codacy-coverage'

Rake::TestTask.new do |t|
  SimpleCov.command_name 'Unit Tests'
  Codacy::Reporter.start
  t.pattern = "test/*_test.rb"
end
