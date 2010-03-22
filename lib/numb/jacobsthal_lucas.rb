class Integer
  def jacobsthal_lucas?
    return true if self == 2
    (1..self).each do |n|
      next if (l = n.jacobsthal_lucas) < self
      return l == self ? true : false
    end
  end

  def jacobsthal_lucas
    lucas2(1, -2)
  end
end
