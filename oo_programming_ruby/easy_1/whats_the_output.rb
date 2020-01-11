class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase!
    "My name is #{@name}."
  end
end

name = 42 # 'Fluffy'
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

=begin

Case 1:
local variable name initialized to 42.

name passed to initialize method.

@name instance variable initialized to name.to_s, creating a new String object.

@name and name point to different objects.

Thus, to_s in Pet class only mutates @name, not name, when @name.upcase! is
called.

Case 2:
local variable name initialized to 'Fluffy'.

name passed to initialize method.

@name instance variable initialized to name.to_s.

Since name is a String, calling name.to_s returns self, the actual String
object that name is pointing to.

@name and name point to the same String object.

Thus, to_s in Pet class mutates both @name and name when @name.upcase! is
called.

=end
