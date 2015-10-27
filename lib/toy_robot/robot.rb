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
          @x = conditionally_decrease(@x)
        when :east
          @x = conditionally_increment(@x)
        when :north
          @y = conditionally_increment(@y)
        when :south
          @y = conditionally_decrease(@y)
      end
    end

    def report
      return "#{@x},#{@y},#{@direction.upcase}"
    end

    private

    def beyond_boundary(value)
      if value > (@board.size - 1) || value < 0
        return true
      else
        return false
      end
    end


      def conditionally_increment(value)
        if beyond_boundary(value + 1)
          return value
        else
          return value + 1
        end
      end

      def conditionally_decrease(value)
        if beyond_boundary(value + 1)
          return value
        else
          return value - 1
        end
      end


  end
end