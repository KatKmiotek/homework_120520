require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestEcosystem < MiniTest::Test
  def setup()
    @river = River.new("Amazon")

    @fish3 = Fish.new("Sonny")
    @bear = Bear.new("Yogi", "Grizzly")
  end

def test_fish_count
  assert_equal(2, @river.fish_count)
end

def test_add_fish
  @river.add_fish(@fish3)
  assert_equal(3, @river.fish_count)
end

def test_remove_fish_from_river
  @river.remove_fish(@fish3)
  assert_equal(1, @river.fish_count)
end



def test_take_fish
  @bear.take_fish(@fish3)
  assert_equal(1, @bear.stomach.length)
end


def test_roar
  assert_equal("Roarrrrr", @bear.roar)
end

def test_food_count
  assert_equal(0, @bear.food_count)
end


end
