class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

# When cat1.color Ruby will look for a method named color first in Cat. It
# won't find it there, so then it will look in Animal. Animal defines
# the color getter method through the attr_reader method. Therfore, Ruby
# stops searching.
# The path: [Cat, Animal].
