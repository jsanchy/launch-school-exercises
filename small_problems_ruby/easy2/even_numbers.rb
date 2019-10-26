# variable nums used to prevent
# rubocop warning '(...) interepreted as grouped expression'
# from this code: (1..99).select(&:even?)
nums = 1..99
puts nums.select(&:even?)
