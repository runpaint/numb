class Integer
  def brown?(n)
    m = self
    n.factorial.succ == m**2
  end
end
