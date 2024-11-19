# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id, color, price, extra_items, luggage=Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items, self))
    @id = id
    @color = color
    @price = price
    @weight = STANDARD_WEIGHT
    @luggage = luggage
  end

  def total_weight
    @weight + @luggage.weight
  end

  def weight_price
    @weight *2
  end

  def base_price
    @price
  end

  



end
