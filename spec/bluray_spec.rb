require_relative 'spec_helper'
require_relative '../lib/bluray'
require_relative '../lib/item'

describe Bluray do
  before(:context) do
    @bluray = Bluray.new('Generic Bluray', 4.49, 95, 'Director1', 'Producer1')
    # initialize item
  end

  # check initialization

  describe 'Initialization' do
    it 'is an instance of the Item class' do
      expect(@bluray).to be_a_kind_of(Item)
    end
    it 'is an instance of the Bluray class' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'is assigned a name' do
      expect(@bluray.name).to eq('Generic Bluray')
    end
    it 'is assigned a price' do
      expect(@bluray.price).to eq(4.49)
    end
    it 'is assigned a runtime' do
      expect(@bluray.runtime).to eq(95)
    end
    it 'is assigned a director' do
      expect(@bluray.director).to eq('Director1')
    end
    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('Producer1')
    end
  end
  describe 'Accessors' do
    it 'should be able to get quantity' do
      expect(@bluray.quantity).to eq(0)
    end
    it 'should be able to get and set name' do
      @bluray.name = 'New Name'
      expect(@bluray.name).to eq('New Name')
    end
    it 'should be able to get and set price' do
      @bluray.price = 44.99
      expect(@bluray.price).to eq(44.99)
    end
    it 'should be able to get and set runtime' do
      @bluray.runtime = 90
      expect(@bluray.runtime).to eq(90)
    end
    it 'should be able to get and set director' do
      @bluray.director = 'test1'
      expect(@bluray.director).to eq('test1')
    end
    it 'should be able to get and set producer' do
      @bluray.producer = 'test'
      expect(@bluray.producer).to eq('test')
    end
  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should not be able to sell more bluray than we have' do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should be able to sell blurays and update quantity' do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end
  # check that it is an extended from Item
  # check that it is an instance of Bluray
  # check getters and setters
end
