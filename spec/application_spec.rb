require 'spec_helper'
require 'toy_robot'

describe Application do

  # read test_data/test-01.command and should return 0,1,NORTH
  # read test_data/test-02.command and should return 0,0,WEST
  # read test_data/test-03.command and should return 3,3,NORTH

  let(:application) { Application.new }

  describe 'execute' do

    context 'given test-01.command' do

      let (:filename) { 'test_data/test-01.command' }
      let (:instructions) { read_from_file(filename) }

      it 'should return 0,1,NORTH' do
        expect(application.parse(instructions)).to eq '0,1,NORTH'
      end

    end

    context 'given test-02.command' do

      let (:filename) { 'test_data/test-02.command' }
      let (:instructions) { read_from_file(filename) }

      it 'should return 0,0,WEST' do
        expect(application.parse(instructions)).to eq '0,0,WEST'
      end

    end

    context 'given test-03.command' do

      let (:filename) { 'test_data/test-03.command' }
      let (:instructions) { read_from_file(filename) }

      it 'should return correct results' do
        expect(application.parse(instructions)).to eq '3,3,NORTH'
      end

    end

  end

  private

  def read_from_file(filename)
    File.readlines(filename)
  end

end