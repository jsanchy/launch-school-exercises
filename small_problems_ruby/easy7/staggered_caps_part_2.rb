ALPHAS = ('a'..'z').to_a

def staggered_case(string, first = 'upper', count_non_alphas = false)
  chars = string.chars
  i = 0
  alphas_seen = 0
  loop do
    need_upper = first == 'upper' ? alphas_seen.even? : alphas_seen.odd?
    if need_upper
      chars[i].upcase!
    else
      chars[i].downcase!
    end
    alphas_seen += 1 if count_non_alphas || ALPHAS.include?(chars[i].downcase)
    i += 1
    break if i == chars.length
  end
  chars.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
