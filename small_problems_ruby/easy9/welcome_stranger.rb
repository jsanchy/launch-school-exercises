def greetings(arr, hsh)
  full_name = arr.join(' ')
  title = hsh[:title]
  occ = hsh[:occupation]
  "Hello, #{full_name}! Nice to have a #{title} #{occ} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
