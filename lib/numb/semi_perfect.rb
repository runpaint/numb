# coding: utf-8
class Integer
  def semi_perfect?
    return false if deficient?
    return true if perfect?
    divisors = proper_positive_divisors
    1.upto(divisors.size-1) do |size|
      divisors.combination(size) do |comb|
        return true if Array(comb).reduce(:+) == self
      end
    end
    false
  end
  alias :pseudo_perfect? :semi_perfect?
end
