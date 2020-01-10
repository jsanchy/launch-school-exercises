class Person
  def initialize(name)
    @name = name
  end

  def name
    @name[0..-1]
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name
