=begin

examples:

[
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
=>
car => 4
truck => 3
SUV => 1
motorcycle => 2

['car']
=>
car => 1

[]
=>

inputs:
array of strings

outputs:
hash, with strings from input array as keys and number of occurences
as values

algorithm:
create hash
loop through input array
if string is a key in hash
  add 1 to the value of that key
else
  add string to hash as a key with a value of 1
return hash

=end

def count_occurrences(ary)
  counts = {}
  ary.each do |str|
    counts[str] ? counts[str] += 1 : counts[str] = 1
  end
  counts.each { |key, value| puts "#{key} => #{value}" }
end

def count_occurrences_case_insensitive(ary)
  counts = {}
  ary.map! { |str| str.downcase }
  ary.each do |str|
    counts[str] = ary.count(str)
  end
  counts.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)
count_occurrences_case_insensitive(vehicles)