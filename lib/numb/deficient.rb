# coding: utf-8
class Integer
  # A deficient number is a number n for which σ(n) < 2n. That is, the sum of
  # its divisors are less than the number. (To calculate the sum of divisors
  # for an arbitrary integer see Integer#σ).
  #
  # Returns true if the number is deficient; false otherwise.
  #
  #     8.deficient?  #=> true
  #     27.deficient? #=> true
  #     6.deficient?  #=> false
  #
  def deficient?
    return false unless self > 0
    sum_of_divisors < (2 * self)
  end

  alias :defective? :deficient?
end
