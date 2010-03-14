# coding: utf-8
class Integer
  def aliquot_sequence(max_iterations=(self > 100 ? 10 : Math.sqrt(self)),
                       summatory_function=->(n){ n.aliquot_sum })
    sequence = [self]
    max_iterations.floor.times do |limit|
      sequence << summatory_function[sequence.last]
      break if sequence[0..-2].include?(sequence.last)
      return sequence << (1/0.0) if limit.consecutive?(max_iterations)
    end
    sequence
  end
end
