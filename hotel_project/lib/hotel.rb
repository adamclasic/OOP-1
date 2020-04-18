require_relative "room"

class Hotel
    def initialize(name, rooms)
        @name = name
        @rooms = rooms
        @rooms.each { |key, value| @rooms[key] = Room.new(value) }
    end

    def room_exists?(name)
        if @rooms.include?(name)
            true
        else
            false
        end
    end
    
    def rooms
        @rooms
    end

    def name
        @name.split.map(&:capitalize).join(' ')
    end

    def check_in(person, room_name)
        if room_exists?(room_name)
            if @rooms[room_name].add_occupant(person)
                puts 'check in successful'
                true
            else
                puts 'sorry, room is full'
                false
            end
        else
            puts 'sorry, room does not exist'
            false
        end
    end

    def has_room_available?
        @rooms.each { |key, value| return true unless value.full?}
        false
    end

    def has_vacancy?; has_room_available? end

    def list_rooms
        @rooms.each { |room_name, room| p room_name, room.available_space.to_s }
    end
  
end

