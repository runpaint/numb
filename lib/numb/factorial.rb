class Integer
  def factorial
    return 1 if zero?
    (1..self).reduce(:*)
  end

  def factorial?
    divisors = self.divisors.sort
    divisors.each_with_index do |d, i|
      if divisors[i.succ] == d.succ
        return true if d.factorial == self
      else
        return d.factorial == self
      end
    end
  end
end
