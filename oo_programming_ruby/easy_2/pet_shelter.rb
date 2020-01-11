class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :number_of_pets

  def initialize(name)
    @name = name
    @number_of_pets = 0
  end

  def adopt
    @number_of_pets += 1
  end
end

class Shelter
  def initialize(unadopted_pets)
    @adoptions = Hash.new(nil)
    @unadopted_pets = unadopted_pets
  end

  def adopt(owner, pet)
    owner.adopt
    adoptions[owner] ||= []
    adoptions[owner] <<= pet
    unadopted_pets.delete(pet)
  end

  def print_adoptions
    adoptions.each do |owner, pets|
      puts "#{owner.name} has adopted the following pets:"
      pets.each do |pet|
        puts pet
      end
      puts
    end

    puts "The Animal Shelter has the following unadopted pets:"
    unadopted_pets.each do |pet|
      puts pet
    end
    puts
  end

  def number_of_pets
    unadopted_pets.size
  end

  private

  attr_reader :adoptions, :unadopted_pets
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'Fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatterbox   = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')

unadopted_pets = [
  butterscotch, pudding, darwin, kennedy, sweetie, molly, chester, asta, laddie,
  fluffy, kat, ben, chatterbox, bluebell
]

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new(unadopted_pets)
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
puts "The Animal Shelter has #{shelter.number_of_pets} unadopted pets."
