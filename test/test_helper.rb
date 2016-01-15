require "codeclimate-test-reporter"
require "minitest/reporters"

CodeClimate::TestReporter.start
Minitest::Reporters.use!
