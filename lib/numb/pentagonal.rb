class Integer
  def pentagonal?
    return true if zero?
    x = (Math.sqrt(24*self + 1) + 1) / 6
    x.to_i == x
  end
end
