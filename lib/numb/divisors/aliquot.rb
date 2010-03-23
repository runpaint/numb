# coding: utf-8
class Integer
  def aliquot_sequence(max_iterations=(self > 100 ? 10 : sqrt),
                       summatory_function=->(n){ n.aliquot_sum })
    sequence = [self]
    max_iterations.floor.times do |limit|
      sequence << summatory_function[sequence.last]
      break if sequence[0..-2].include?(sequence.last)
      return sequence << (1/0.0) if limit.consecutive?(max_iterations)
    end
    sequence
  end

  def sociable?(t)
    return false unless t >= 3
    aliquot_sequence(t.succ).last == self
  end

  def unitary_sociable?(t)
    return false unless t >= 3
    seq = aliquot_sequence(t.succ, ->(n){ n.sum_of_unitary_divisors - n})
    seq.size - 1  == t and seq.last == self
  end

  def aspiring?(max_iterations=10)
    return false if perfect? 
    (last = aliquot_sequence(max_iterations).last).to_f.finite? ? 
      last.perfect? : 
      false
  end
end
