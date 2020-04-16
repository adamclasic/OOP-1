class Dog

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    
    end

    #getter methods

    def name; @name end
    def breed; @breed end
    def age; @age end
    def bark
        @age>3 ? @bark.upcase : @bark.downcase
    end
    def favorite_foods; @favorite_foods.map { |i| i.capitalize} end

    #setter methods

    def age=(age)
        @age = age
    end
    

    #arbitry methods
    def favorite_food?(str)
        @favorite_foods.include?(str.capitalize)
    end

end


# dog1 = Dog.new('spenc', 'german sheprd', 4, "Miaw Miaw", ['salad', 'chese', 'water'])

# p dog1.age

# p dog1

# p dog1.bark
# p dog1.favorite_foods

# p dog1.favorite_food?('Water')
# dog1.age = 2

# p dog1.bark