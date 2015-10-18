require 'spec_helper'

describe Robot do

  context 'add a number' do

    before do
      @robot = Robot.new
    end

    it 'should return number plus one' do
      expect(@robot.add(1)).to eq 2
    end
  end

end