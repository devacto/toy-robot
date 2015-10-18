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

end