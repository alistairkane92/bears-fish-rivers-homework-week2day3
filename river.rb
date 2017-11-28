class River
    def initialize(name, contained_fish)
        @name = name
        @contained_fish = []
    end

    def river_name
        return @name
    end

    def contained_fish
        return @contained_fish
    end

    def count_fish
        return @contained_fish.length
    end

    def add_all_fish_to_river(fish_1, fish_2, fish_3)
        @contained_fish << fish_1
        @contained_fish << fish_2
        @contained_fish << fish_3
    end

end
