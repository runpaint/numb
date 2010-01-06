class Integer
  def aliquot_sequence
    sequence = [self]
    100.times do |limit|
      raise RangeError if limit == 99
      divisors = sequence.last.proper_positive_divisors
      break if divisors.empty?
      sequence << divisors.reduce(:+)
      break if sequence[0..-2].include?(sequence.last)
    end
    sequence
  end

  def aspiring?
    aliquot_sequence.last.perfect?
  end
end
