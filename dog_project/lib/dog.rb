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
    def bark; "#{@bark} my name is #{@name} !" end
    def favorite_foods; @favorite_foods end


    #arbitry methods
    def favorite_foods?(str)
        @favorite_foods.include?(str)
    end

end

dog1 = Dog.new('spenc', 'german sheprd', 4, "Miaw-Miaw", ['salad', 'chese', 'water'])
p dog1

p dog1.bark

p dog1.favorite_foods?('milk')