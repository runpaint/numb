class Integer
  def lucas?
    in_sequence?(seq: :lucas, initial: [2])
  end

  def lucas
    lucas2(1, -1)
  end
end
