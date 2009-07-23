# coding: utf-8

require 'prime'

class Integer

  def abundant?
    return false unless self > 0
    sum_of_divisors > (2 * self)
  end

  def curious?
    (self ** 2).to_s.end_with? self.to_s
  end
  alias :automorphic? :curious?

  def deficient?
    return false unless self > 0
    sum_of_divisors < (2 * self)
  end

  def perfect?
    return false if self < 6 or self.odd? or self.to_s !~ /(6|8)$/
    return false if self != 6 and digital_root != 1  
    divisors = proper_positive_divisors
    return false unless (divisors.size + 1).even?
    divisors.reduce(:+) == self
  end

  # Implementation of Stewart, B. M. (1954), "Sums of distinct divisors",
  # American Journal of Mathematics 76: 779–785, doi:10.2307/2372651,
  # MR0064800
  def practical?
    sum = 1
    k = 2
    n = self
    while (n >= k)
      s = 1
      u = 0
      while (n % k == 0)
        n = n/k
        s = s * k + 1
        u += 1
      end
      unless (u == 0)
        return false if (k > sum + 1)
        sum *= s
      end
      k += (k == 2) ? 1 : 2
    end
    true
  end

  def perfect_power?
    return false unless self > 0
    return true if self == 1
    divisors = positive_divisors
    (2..Math.log2(self)).any? { |pow| divisors.any? {|div| (div ** pow) == self} } 
  end

  def polite? 
    return true if self == 1
    politeness > 0
  end

  def impolite? 
    not polite?
  end
  
  def triangular?
    return false if self < 0
    root = Math.sqrt(8 * self + 1)
    root == root.floor
  end

  def semi_perfect?
    return false if deficient?
    return true if perfect?
    divisors = proper_positive_divisors
    1.upto(divisors.size-1) do |size|
      divisors.combination(size) do |comb|
        return true if comb.reduce(:+) == self
      end
    end
    false
  end
  alias :pseudo_perfect? :semi_perfect?

  def square?
    return false if self < 0
    root = Math.sqrt(self)
    root == root.floor
  end

  def politeness
    positive_divisors.select{|d| d > 1}.select{|d| d.odd?}.size
  end

  def hilbert?
    return false unless self > 0
    ((self - 1) % 4) == 0
  end

  def powerful?
    return false unless self > 0
    require 'prime'
    divisors = positive_divisors
    divisors.select {|d| d.prime? }.all?{|prime| divisors.include? (prime ** 2)}
  end

  def achilles?
    powerful? and not perfect_power?
  end

  def weird?
    return false unless self > 0
    return false if odd? && self < (10 ** 17)
    not semi_perfect? and abundant?
  end

  def proper_positive_divisors
    positive_divisors.reject {|d| d == self }
  end

  def positive_divisors
    return [] unless self >= 0
    (1..Math.sqrt(self).floor).select { |n| (self % n).zero? }.
                              map {|n| [n, self/n]}.flatten.uniq
  end

  def sum_of_divisors
    positive_divisors.reduce(:+)
  end
  alias σ :sum_of_divisors

  def digital_root
    self == 0 ? 0 : 1 + ((self - 1) % 9)
  end
end
