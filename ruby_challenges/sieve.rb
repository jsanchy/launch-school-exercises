class Sieve
  def initialize(limit)
    @limit = limit
    @range_hsh = (2..limit).each_with_object({}) { |num, hsh| hsh[num] = false }
  end

  def primes
    @range_hsh.each do |num, marked|
      next if marked
      cur_num = num + num
      while cur_num <= @limit
        @range_hsh[cur_num] = true
        cur_num += num
      end
    end
    @range_hsh.reject { |_, marked| marked }.keys
  end
end
