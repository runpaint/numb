class Integer
  def jacobsthal_lucas?
    in_sequence?(seq: :jacobsthal_lucas, initial: 2)
  end

  def jacobsthal_lucas
    lucas2(1, -2)
  end
end
