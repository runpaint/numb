class Integer
  def square?
    return false if self < 0
    root = Math.sqrt(self)
    root == root.floor
  end
end
