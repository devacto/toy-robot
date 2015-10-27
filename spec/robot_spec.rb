require 'spec_helper'

describe Robot do

  before do
    @board = Board.new(5)
    @robot = Robot.new(@board)
  end

  describe '#place' do

    context 'after place' do

      before do
        @robot.place(1, 5, 'NORTH')
      end

      it 'robot should have the correct x coordinate' do
        expect(@robot.x).to eq 1
      end

      it 'robot should have the correct y coordinate' do
        expect(@robot.y).to eq 5
      end

      it 'robot should have the correct direction' do
        expect(@robot.direction).to eq :north
      end
    end

  end

  describe '#left' do

    context 'from north' do

      before do
        @robot.direction = :north
        @robot.left
      end

      it 'should be west' do
        expect(@robot.direction).to eq :west
      end

    end

    context 'from west' do

      before do
        @robot.direction = :west
        @robot.left
      end

      it 'should be south' do
        expect(@robot.direction).to eq :south
      end

    end

    context 'from south' do

      before do
        @robot.direction = :south
        @robot.left
      end

      it 'should be east' do
        expect(@robot.direction).to eq :east
      end

    end

    context 'from east' do

      before do
        @robot.direction = :east
        @robot.left
      end

      it 'should be north' do
        expect(@robot.direction).to eq :north
      end

    end

  end

  describe '#right' do

    context 'from north' do

      before do
        @robot.direction = :north
        @robot.right
      end

      it 'should be east' do
        expect(@robot.direction).to eq :east
      end

    end

    context 'from east' do

      before do
        @robot.direction = :east
        @robot.right
      end

      it 'should be south' do
        expect(@robot.direction).to eq :south
      end

    end

    context 'from south' do

      before do
        @robot.direction = :south
        @robot.right
      end

      it 'should be west' do
        expect(@robot.direction).to eq :west
      end

    end

    context 'from west' do

      before do
        @robot.direction = :west
        @robot.right
      end

      it 'should be north' do
        expect(@robot.direction).to eq :north
      end

    end

  end

  describe '#move' do

    context 'currently facing west' do

      before do
        @robot.place(2, 2, 'WEST')
        @robot.move
      end

      it 'x coordinate decreases by 1' do
        expect(@robot.x).to eq 1
      end

      it 'y coordinate remains the same' do
        expect(@robot.y).to eq 2
      end

      it 'direction remains the same' do
        expect(@robot.direction).to eq :west
      end
    end

    context 'currently facing east' do

      before do
        @robot.place(2, 2, 'EAST')
        @robot.move
      end

      it 'x coordinate increases by 1' do
        expect(@robot.x).to eq 3
      end

      it 'y coordinate remains the same' do
        expect(@robot.y).to eq 2
      end

      it 'direction remains the same' do
        expect(@robot.direction).to eq :east
      end
    end

    context 'currently facing north' do

      before do
        @robot.place(2, 2, 'NORTH')
        @robot.move
      end

      it 'x coordinate remains the same' do
        expect(@robot.x).to eq 2
      end

      it 'y coordinate increases by 1' do
        expect(@robot.y).to eq 3
      end

      it 'direction remains the same' do
        expect(@robot.direction).to eq :north
      end
    end

    context 'currently facing south' do

      before do
        @robot.place(2, 2, 'SOUTH')
        @robot.move
      end

      it 'x coordinate remains the same' do
        expect(@robot.x).to eq 2
      end

      it 'y coordinate decreases by 1' do
        expect(@robot.y).to eq 1
      end

      it 'direction remains the same' do
        expect(@robot.direction).to eq :south
      end
    end

    context 'beyond board size' do

      before do
        @robot.x = 4
        @robot.y = 4
        @robot.direction = :north
        @robot.move
      end

      it 'ignores the command' do
        expect(@robot.x).to eq 4
        expect(@robot.y).to eq 4
        expect(@robot.direction).to eq :north
      end

    end
  end

  describe '#report' do

    context 'straight after being places' do
      before do
        @robot.place(2, 2, 'NORTH')
      end

      it 'gives out correct information' do
        expect(@robot.report).to eq '2,2,NORTH'
      end
    end

  end

end
