class Integer
  def perrin?
    return true if (perin = [3, 0, 2]).include?(self)
    until perin.last > self
      perin << perin[-2] + perin[-3]
      return true if perin.last == self
    end
    false
  end
end
