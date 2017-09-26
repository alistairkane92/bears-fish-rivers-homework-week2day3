require 'minitest/autorun'
require 'minitest/rg'

require_relative '../fish'
require_relative '../river'

class TestFish < MiniTest::Test

    def setup
        @fish1 = Fish.new("Nemo")
        @fish2 = Fish.new("Dory")
        @fish3 = Fish.new("Rejectfish")

        @allfish = [@fish1, @fish2, @fish3]
    end

    def test_fish_name
        assert_equal("Nemo", @fish1.fish_name)
    end

end
