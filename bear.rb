class Bear
attr_accessor :stomach

def initialize(name, type)
   @name = name
   @type = type
   @stomach = []
end

def take_fish(fish)
  @stomach.push(fish)
end

def roar()
  return "Roarrrrr"
end

def food_count
return @stomach.count
end




end
