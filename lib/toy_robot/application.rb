require 'active_model'

require 'board'
require 'robot'

module ToyRobot
  class Application

    def initialize
      @board = Board.new(5)
      @robot = Robot.new(@board)
    end

    def parse(instructions)
      result = Array.new
      instructions.each do |instruction|
        result << execute(instruction)
      end
      return result.pop
    end

    private

    def execute(instruction)
      @args = instruction.scan(/-?\w+/)
      command = @args.shift
      @command = command.downcase.to_sym if command
      result = @robot.send(@command, *@args)
      return result if result
    end

  end
end