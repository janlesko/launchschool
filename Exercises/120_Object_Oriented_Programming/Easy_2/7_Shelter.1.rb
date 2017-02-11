class Pet
  attr_reader :name, :animal
  
  def initialize(animal, name)
    @animal = animal
    @name = name
  end
  
  def to_s
    "#{animal} with a name #{name}"
  end
end

class Shelter
  def initialize
    @owners = []
  end
  
  def adopt(owner, pet)
    owner.add_pet(pet)
    @owners << owner unless @owners.include?(owner)
  end
  
  def print_adoptions
    @owners.each do |owner|
      puts "#{owner.name} has:"
      owner.print_pets
      puts
    end
  end
end

class Owner
  attr_reader :pets, :name
  
  def initialize(name)
    @name = name
    @pets = []
  end
  
  def add_pet(pet)
    @pets << pet
  end
  
  def print_pets
    pets.each { |pet| puts pet }
  end
  
  def number_of_pets
    pets.size
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."