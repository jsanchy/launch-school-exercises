class PerfectNumber
  def self.classify(number)
    raise('argument is not a positive integer.') unless number > 0

    sum = divisors_less_than(number).sum

    case
    when sum == number then 'perfect'
    when sum > number  then 'abundant'
    else                    'deficient'
    end
  end

  def self.divisors_less_than(number)
    divisors = [1]
    return divisors if number == 1

    2.upto(Math.sqrt(number).to_i) do |possible_factor|
      if number % possible_factor == 0
        divisors << possible_factor << (number / possible_factor)
      end
    end

    divisors
  end
end
