class Bear
    def initialize(name, stomach)
        @name = name
        @stomach = stomach
    end

    def bear_name
        return @name
    end

    def stomach_size
        return @stomach.length
    end

    def stomach
        return @stomach
    end

    def take_fish(river_fish, stomach)
        @stomach << river_fish
    end

    def roar
        puts "Meow"
    end

end
