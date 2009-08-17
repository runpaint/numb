# coding: utf-8
class Integer
  # An equidigital number has the same number of digits as
  # the number of digits in its prime factorization (including exponents). 
  #
  # For example, 35 is equidigital because it has two digits and two 1-digit
  # prime factors (5 and 7).
  #
  # Returns true if self is equidigital; false otherwise.
  #
  #     81.equidigital?    #=> true
  #     49.equidigital?    #=> true
  #     1287.equidigital?  #=> false
  #
  def equidigital?
    digits.size == prime_division.flatten.reject{|d|d==1}.join.to_i.digits.size
  end
end
