def include?(array, search_value)
  # here's a weird way for further exploration
  ###
  # !(array.find(lambda {false}) { |el| el == search_value } == false)
  ###
  array.each do |element|
    return true if element == search_value
  end
  false
end

def always_false
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
