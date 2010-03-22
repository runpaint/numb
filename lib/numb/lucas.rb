class Integer
  def lucas?
    in_sequence?(:lucas, [2])
  end

  def lucas
    lucas2(1, -1)
  end
end
