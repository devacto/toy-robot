require 'thor'

require 'application'

module ToyRobot
  module Cli
    class Application < Thor

      attr_accessor :application

      desc '-f path/to/file', 'moves robot on a board as per commands in a file'

      method_option :file, type: :string, aliases: '-f',
                    desc: 'name of file containing robot instructions'

      def execute
        @application = ToyRobot::Application.new
        instructions = read_from_file(options[:file])
        @application.parse(instructions)
      end

      default_task :execute

      no_tasks do

        def read_from_file(filename)
          begin
            File.readlines(filename)
          end
        rescue Exception => e
          puts "Filename not specified or does not exist."
          puts e.message
        end
      end

    end
  end
end
