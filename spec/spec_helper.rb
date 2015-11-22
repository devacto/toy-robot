require 'rspec'

require 'simplecov'

SimpleCov.start

require 'toy_robot'

include ToyRobot

require 'codeclimate-test-reporter'

CodeClimate::TestReporter::Start