require_relative 'item.rb'
require 'pry'

class Bluray < Item
  attr_accessor :name, :price, :runtime, :director, :producer

  def initialize(name, price, runtime, director, producer)
    super(name, price)
    @runtime = runtime
    @director = director
    @producer = producer
  end
end

binding.pry
