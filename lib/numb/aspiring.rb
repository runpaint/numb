class Integer
  def aliquot_sequence
    sequence = [self]
    max_iterations = Math.sqrt(self).floor
    max_iterations.times do |limit|
      divisors = sequence.last.proper_divisors
      break if divisors.empty?
      sequence << divisors.reduce(:+)
      break if sequence[0..-2].include?(sequence.last)
      return sequence << (1/0.0) if limit.succ == max_iterations
    end
    sequence
  end

  def aspiring?
    return false if perfect? 
    (last = aliquot_sequence.last).to_f.finite? ? last.perfect? : false
  end
end
