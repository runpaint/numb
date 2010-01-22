# coding: utf-8
class Integer
  def aliquot_sequence(max_iterations=(self > 100 ? 10 : Math.sqrt(self)))
    sequence = [self]
    max_iterations.floor.times do |limit|
      sequence << sequence.last.aliquot_sum
      break if sequence[0..-2].include?(sequence.last)
      return sequence << (1/0.0) if limit.succ == max_iterations
    end
    sequence
  end
end
