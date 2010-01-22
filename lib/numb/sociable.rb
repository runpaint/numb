class Integer
  def sociable?(t)
    return false unless t >= 3
    aliquot_sequence(t.succ).last == self
  end
end
