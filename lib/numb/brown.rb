class Integer
  def brown?(n)
    n.factorial.consecutive?(self ** 2)
  end
end
