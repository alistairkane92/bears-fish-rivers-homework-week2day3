require 'minitest/autorun'
require 'minitest/rg'

require_relative '../river'
require_relative '../fish'


class RiverTest < MiniTest::Test

    def setup
        @fish1 = Fish.new("Nemo")
        @fish2 = Fish.new("Dory")
        @fish3 = Fish.new("Rejectfish")

        @amazon = River.new("Amazon", [])
    end

    def test_river_name
        assert_equal("Amazon", @amazon.river_name)
    end

    def test_river_contained_fish
        assert_nil(nil, @amazon.contained_fish)
    end

    def test_count_fish
        assert_equal(0, @amazon.count_fish)
    end

    def test_add_all_fish_to_river
        @amazon.add_all_fish_to_river(@fish1, @fish2, @fish3)

        assert_equal(3, @amazon.count_fish)
    end



end
