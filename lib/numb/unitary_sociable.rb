class Integer
  def unitary_sociable?(t)
    return false unless t >= 3
    seq = aliquot_sequence(t.succ, ->(n){ n.sum_of_unitary_divisors - n})
    seq.size - 1  == t and seq.last == self
  end
end
