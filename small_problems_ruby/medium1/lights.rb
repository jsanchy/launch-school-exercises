def lights(n)
  (1..n).select do |num|
    sq_rt = Math.sqrt(num)
    sq_rt == sq_rt.to_i
  end
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000)
