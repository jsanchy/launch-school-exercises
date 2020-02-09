class SumOfMultiples
  DEFAULT_NUMBER_SET = [3, 5]

  def initialize *numbers
    @numbers = numbers.empty? ? DEFAULT_NUMBER_SET : numbers
  end

  def to(limit)
    self.class.to(limit) { @numbers }
  end

  def self.to(limit)
    numbers = block_given? ? yield : DEFAULT_NUMBER_SET

    (1...limit).select do |possible_multiple|
      numbers.any? { |number| possible_multiple % number == 0 }
    end.sum
  end
end
