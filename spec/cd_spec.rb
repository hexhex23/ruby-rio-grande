require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('My Heart Will Go On', 15.00, 12, 'Celine Dion', 68)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('My Heart Will Go On')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end

    it 'is assigned number of tracks' do
      expect(@cd.tracks_num_of).to eq(12)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Celine Dion')
    end

    it 'is assigned a run time' do
      expect(@cd.run_time).to eq(68)
    end

  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Seven Nation Army'
      expect(@cd.name).to eq('Seven Nation Army')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the pages' do
      @cd.tracks_num_of = 8
      expect(@cd.tracks_num_of).to eq(8)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'The White Stripes'
      expect(@cd.artist).to eq('The White Stripes')
    end

    it 'assigns and reads run time' do
      @cd.run_time = 22
      expect(@cd.run_time).to eq(22)
    end
    
  end

end
