class DNA
  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(other)
    shorter, longer = [@sequence, other].sort_by(&:size)
    shorter.each_char.with_index.inject(0) do |distance, (base, idx)|
      base == longer[idx] ? distance : distance + 1
    end
  end
end
