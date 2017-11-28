require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bear'
require_relative '../river'
require_relative '../fish'

class BearTest  < MiniTest::Test

    def setup
        @fuzzy = Bear.new("Fuzzy", [])

        @fish1 = Fish.new("Nemo")
        @fish2 = Fish.new("Dory")
        @fish3 = Fish.new("Rejectfish")

        @amazon = River.new("Amazon", [])
    end

    def test_bear_name
        assert_equal("Fuzzy", @fuzzy.bear_name)
    end

    def test_bear_stomach_size
        assert_equal(0, @fuzzy.stomach_size)
    end

    def test_bear_stomach
        assert_equal([], @fuzzy.stomach)
    end

    def test_take_fish_and_remove
        @amazon.add_all_fish_to_river(@fish1, @fish2, @fish3)
        @fuzzy.take_fish(@amazon.contained_fish, @stomach)
        @amazon.contained_fish.pop(1)

        assert_equal(1, @fuzzy.stomach_size)
        assert_equal(2, @amazon.count_fish)
    end

    def test_bear_roar
        @fuzzy.roar
    end

    def test_bear_roar
        assert_equal("Meow", @fuzzy.roar)
    end
end
