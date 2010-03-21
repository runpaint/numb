class Integer
  def pell_lucas?
    return true if self == 2
    (1..self).each do |n|
      next if (l = n.pell_lucas) < self
      return l == self ? true : false
    end
  end

  def pell_lucas
    lucas2(2, -1)
  end
end
