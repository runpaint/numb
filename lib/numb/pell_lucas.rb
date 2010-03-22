class Integer
  def pell_lucas?
    in_sequence?(seq: :pell_lucas, initial: [2])
  end

  def pell_lucas
    lucas2(2, -1)
  end
end
