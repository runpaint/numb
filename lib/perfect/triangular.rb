class Integer
  def triangular?
    return false if self < 0
    root = Math.sqrt(8 * self + 1)
    root == root.floor
  end
end
