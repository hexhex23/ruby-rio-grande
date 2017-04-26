require_relative 'item.rb'
require 'pry'

class Cd < Item
  attr_accessor :name, :price, :tracks_num_of, :artist, :run_time
  def initialize(name, price, tracks_num_of, artist, run_time)
    @tracks_num_of = tracks_num_of
    @artist = artist
    @run_time = run_time
    super(name, price)
  end
end

binding.pry
