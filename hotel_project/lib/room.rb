class Room
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        if @occupants.length >= @capacity
            return true
        else
            return false
        end
    end

    def available_space
        a = @occupants.length
        r = @capacity-a
        r
    end

    def add_occupant(name)
        @name = name
        if full?
            false
        else
            @occupants << @name
            return true
        end
    end

end


# roo1 = Room.new(3)
# roo1.add_occupant('adam')
# p roo1.add_occupant('djazo')
# p roo1.add_occupant('samah')
# p roo1.add_occupant('ihab')
# p roo1.occupants
# p roo1.available_space