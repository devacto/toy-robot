require 'spec_helper'

describe Robot do

  describe '#place' do

    context 'after place' do

      before do
        @robot = Robot.new
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
        @robot = Robot.new
        @robot.direction = :north
        @robot.left
      end

      it 'should be west' do
        expect(@robot.direction).to eq :west
      end

    end

    context 'from west' do

      before do
        @robot = Robot.new
        @robot.direction = :west
        @robot.left
      end

      it 'should be south' do
        expect(@robot.direction).to eq :south
      end

    end

    context 'from south' do

      before do
        @robot = Robot.new
        @robot.direction = :south
        @robot.left
      end

      it 'should be east' do
        expect(@robot.direction).to eq :east
      end

    end

    context 'from east' do

      before do
        @robot = Robot.new
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
        @robot = Robot.new
        @robot.direction = :north
        @robot.right
      end

      it 'should be east' do
        expect(@robot.direction).to eq :east
      end

    end

    context 'from east' do

      before do
        @robot = Robot.new
        @robot.direction = :east
        @robot.right
      end

      it 'should be south' do
        expect(@robot.direction).to eq :south
      end

    end

    context 'from south' do

      before do
        @robot = Robot.new
        @robot.direction = :south
        @robot.right
      end

      it 'should be west' do
        expect(@robot.direction).to eq :west
      end

    end

    context 'from west' do

      before do
        @robot = Robot.new
        @robot.direction = :west
        @robot.right
      end

      it 'should be north' do
        expect(@robot.direction).to eq :north
      end

    end

  end

end