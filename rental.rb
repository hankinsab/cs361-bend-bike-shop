class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def total_price
    bike.weight_price + @bike.luggage.price + @bike.base_price
  end

  def weight
    @bike.total_weight
  end

end
