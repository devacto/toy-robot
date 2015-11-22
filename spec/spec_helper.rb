require 'codeclimate-test-reporter'
require 'rspec'
require 'simplecov'
require 'toy_robot'

SimpleCov.start do
  formatter SimpleCov::Formatter::MultiFormatter[
                SimpleCov::Formatter::HTMLFormatter,
                CodeClimate::TestReporter::Formatter
            ]
end


include ToyRobot
