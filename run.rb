require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

gorilla = Animal.new("ape", 400, "Grilly", "San Diego Zoo")
gorilla2 = Animal.new("ape", 326, "Koko", "Lincoln Park Zoo")
gorilla3 = Animal.new("ape", 423, "Johanna", "Bronx Zoo")

ostrich = Animal.new("bird", 200, "Oscar", "San Diego Zoo")
ostrich1 = Animal.new("bird", 115, "Daisy", "Bronx Zoo")
ostrich2 = Animal.new("bird", 175, "Lilly", "San Diego Zoo")
ostrich3 = Animal.new("bird", 250, "Ed", "Lincoln Park Zoo")

dolphin = Animal.new("fish", 400, "Jeb", "Lincoln Park Zoo")

zoo1 = Zoo.new("San Diego Zoo", "San Diego")
zoo2 = Zoo.new("Lincoln Park Zoo", "Chicago")
zoo3 = Zoo.new("Bronx Zoo", "New York")
zoo4 = Zoo.new("Southern CA Zoo", "San Diego")

binding.pry
puts "done"
