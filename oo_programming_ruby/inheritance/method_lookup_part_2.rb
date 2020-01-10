class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
# cat1.color

puts Cat.ancestors

=begin

The method lookup path when invoking cat1.color is:

Cat
Animal
Object
Kernel
BasicObject

=end
