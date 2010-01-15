class Integer
  def brown?(n)
    m = self
    (1..n).reduce(:*).succ == m**2
  end
end
