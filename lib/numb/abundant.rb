# coding: utf-8
class Integer
  # An abundant number is a number n for which σ(n) > 2n. That is, the sum of
  # its divisors exceeds 2n. (See Integer#σ to compute the sum of the divisors
  # of an arbitrary integer).
  #
  # Returns true if the number is abundant; false otherwise.
  #
  #     96.abundant?   #=> true
  #     100.abundant?  #=> true
  #     345.abundant?  #=> false
  #
  def abundant?
    return false unless self > 0
    sum_of_divisors > (2 * self)
  end
end
