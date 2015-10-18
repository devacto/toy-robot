require 'thor'

module ToyRobot
  module Cli
    class Application < Thor

      attr_accessor :application

      desc '-f path/to/file', 'moves robot on a board as per commands'

      method_option :file, type: :string, aliases: '-f',
                    desc: 'name of file containing robot instructions'

      def execute
        read_from_file(options[:file])
      end

      default_task :execute

      no_tasks do

        def read_from_file(filename)
          begin
            File.readlines(filename).map do |line|
              puts line
            end
          rescue Exception => e
            puts "Filename not specified or does not exist."
          end
        end

      end
    end
  end
end