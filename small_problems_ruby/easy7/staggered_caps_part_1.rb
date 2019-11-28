def staggered_case(string, first = 'upper')
  chars = string.chars
  i = 0
  loop do
    need_upper = first == 'upper' ? i.even? : i.odd?
    if need_upper
      chars[i].upcase!
    else
      chars[i].downcase!
    end
    i += 1
    break if i == chars.length
  end
  chars.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
