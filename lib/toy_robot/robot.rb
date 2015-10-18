module ToyRobot
  class Robot

    # 3 robot attributes: x, y coordinates and direction
    attr_accessor :x, :y, :direction

    BOARD_SIZE = 5

    def place(x, y, dir)
      self.x = x
      self.y = y
      self.direction = dir.downcase.to_sym
    end

  end
end