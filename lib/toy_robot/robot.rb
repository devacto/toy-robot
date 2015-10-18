module ToyRobot
  class Robot

    # 3 robot attributes: x, y coordinates and direction
    attr_accessor :x, :y, :direction

    BOARD_SIZE = 5

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

  end
end