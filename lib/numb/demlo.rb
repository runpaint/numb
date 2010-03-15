class Integer
  def demlo
    repunit ** 2
  end

  def demlo?
    square? and isqrt.repunit?(10)
  end
end
