# coding: utf-8
class Integer
  # An extravagant number has fewer digits than the number of digits in its
  # prime factorization (including exponents).
  #
  # Returns true if self is extravagant; false otherwise. Aliased to
  # Integer#wasteful?.
  #
  #     234.extravagant?  #=> true
  #     87.extravagant?   #=> true
  #     81.extravagant?   #=> false
  #
  def extravagant?
    digits.size < prime_division.flatten.reject{|d|d==1}.join.to_i.digits.size
  end

  alias :wasteful? :extravagant?
end
