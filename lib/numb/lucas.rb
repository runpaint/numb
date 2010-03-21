class Integer
  def lucas?
    return true if self == 2
    (1..self).each do |n|
      next if (l = n.lucas) < self
      return l == self ? true : false
    end
  end

  def lucas
    lucas2(1, -1)
  end
end
