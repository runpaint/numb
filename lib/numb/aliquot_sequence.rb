class Integer
  def aliquot_sequence(max_iterations=(self > 100 ? 10 : Math.sqrt(self)))
    sequence = [self]
    max_iterations.floor.times do |limit|
      divisors = sequence.last.proper_divisors
      break if divisors.empty?
      sequence << divisors.reduce(:+)
      break if sequence[0..-2].include?(sequence.last)
      return sequence << (1/0.0) if limit.succ == max_iterations
    end
    sequence
  end
end
