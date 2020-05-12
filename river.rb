class River
attr_accessor :fishes, :fish1, :fish2, :name

def initialize(name)
  @name = name
  @fishes = [@fish1, @fish2]
  # @fish1 = Fish.new("Molly")
  # @fish2 = Fish.new("Polly")
end


def fish_count
  return @fishes.count
end

def add_fish(fish)
  @fishes.push(fish)
end


# dont know why doesn't work. When was using @fishes as an empty array and adding fish before removed it all was fine
def remove_fish(fish)
  @fishes.delete(fish)
end







end
