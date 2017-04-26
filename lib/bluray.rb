require_relative 'item.rb'
require 'pry'

class Bluray < Item
  attr_accessor :name, :price, :run_time, :director, :producer

  def initialize(name, price, run_time, director, producer)
    @run_time = run_time
    @director = director
    @producer = producer
    super(name, price)
  end
end

binding.pry
