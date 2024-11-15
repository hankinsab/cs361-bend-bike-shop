# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :pannier

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented 
    @pannier = Pannier.new
  end

  
  def rent!
    self.rented = true
  end
end

class Cargo

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Pannier 

  MAX_ITEMS = 10

  attr_accessor :contents

def initialize()
  @contents = [] 
end

  def add_cargo(cargo)
    self.contents << cargo
  end

  def remove_cargo(cargo)
    self.contents.remove(cargo)
  end

  def pannier_capacity
    MAX_ITEMS
  end

  def pannier_remaining_capacity
    MAX_ITEMS - self.contents.size
  end
end
