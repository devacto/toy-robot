require 'board'

module ToyRobot
  class Robot

    # each robot has a board
    attr_accessor :board

    # 3 robot attributes: x, y coordinates and direction
    attr_accessor :x, :y, :direction

    def initialize(board)
      @board = board
    end

    def place(x, y, dir)
      @x = x
      @y = y
      @direction = dir.downcase.to_sym
    end

    def left
      case @direction
        when :north
          @direction = :west
        when :west
          @direction = :south
        when :south
          @direction = :east
        when :east
          @direction = :north
      end
    end

    def right
      case @direction
        when :north
          @direction = :east
        when :east
          @direction = :south
        when :south
          @direction = :west
        when :west
          @direction = :north
      end
    end

    def move
      case @direction
        when :west
          @x = @x - 1
        when :east
          @x = @x + 1
        when :north
          @y = @y + 1
        when :south
          @y = @y - 1
      end
    end

    def report
      return "#{@x},#{@y},#{@direction.upcase}"
    end

  end
end
