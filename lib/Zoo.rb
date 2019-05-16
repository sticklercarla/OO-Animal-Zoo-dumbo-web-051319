class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|animal_instance| animal_instance.zoo_name == self.name}
    end

    def animal_species
        animal_array =[]
        Animal.all.collect do |animal_instance| 
            if animal_instance.zoo_name == self.name
                animal_array << animal_instance.species
            end
        end
        animal_array.uniq
    end

    def find_by_species(animal_species)
        animal_array = []
        Animal.all.collect do |animal_instance|
            if animal_instance.species == animal_species
                if animal_instance.zoo_name == self.name
                    animal_array << animal_instance
                end
            end
        end
        animal_array
    end

    def animal_nicknames
        animal_array = []
        Animal.all.collect do |animal_instance| 
            if animal_instance.zoo_name == self.name
                animal_array << animal_instance.nickname
            end
        end
        animal_array
    end

    def self.find_by_location(location_arg)
        self.all.select {|zoo_location| location_arg == zoo_location.location}
    end

end
