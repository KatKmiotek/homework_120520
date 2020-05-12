class River
attr_accessor :fishes, :fish1, :fish2, :name

def initialize(name)
  @name = name
  @fishes = [@fish1, @fish2]
  
end


def fish_count
  return @fishes.count
end

def add_fish(fish)
  @fishes.push(fish)
end



def remove_fish
  @fishes.pop
end







end
