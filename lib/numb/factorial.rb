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

  def factorial_of?
    return false unless factorial?
    return 1 if self == 1
    pfacts = primaries
    divisors.sort.take_while.with_index{|d,i| d == i.succ}.reverse_each do |d|
      pfacts.all? do |b, e|
        (1..Math.log(d,b)).map{|k| Rational(d, b**k).floor}.reduce(:+) == e
      end and return d
    end
    nil
  end
end
