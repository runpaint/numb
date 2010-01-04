class Integer
  def hexagonal?
    return true if zero?
    n = ((Math.sqrt((8*self) + 1) + 1)/4)
    n == n.to_i
  end
end
