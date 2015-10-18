require 'spec_helper'

describe Robot do

  context 'placing a robot' do

    before do
      @robot = Robot.new
      @robot.place(1, 5, 'NORTH')
    end

    it 'should put robot in the correct x coordinate' do
      expect(@robot.x).to eq 1
    end

    it 'should put robot in the correct y coordinate' do
      expect(@robot.y).to eq 5
    end

    it 'should put robot in the correct direction' do
      expect(@robot.direction).to eq :north
    end
  end

end