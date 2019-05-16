class Animal

    attr_accessor :weight
    attr_reader :species, :nickname, :zoo_name

    @@all = []

    def initialize(species, weight, nickname, zoo_name)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo_name = zoo_name
        @@all << self
    end

    def self.all
        @@all
    end

    def zoo
        Zoo.all.find do |zoo_location|
            if self.zoo_name == zoo_location.name
                zoo_location
            end
        end
    end

    def self.find_by_species(species_arg)
        self.all.select {|animal_species| animal_species.species == species_arg}
    end


end
