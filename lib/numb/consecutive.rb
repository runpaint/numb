class Integer
  def consecutive?(m)
    self == m.succ or succ == m
  end
end
