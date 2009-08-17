# coding: utf-8
class Integer

  # A frugal number has more digits than the number of digits in its prime
  # factorization (including exponents).
  #
  # Returns true if self is frugal; false otherwise.
  #
  #     128.frugal?  #=> true
  #     256.frugal?  #=> true
  #     300.frugal?  #=> false
  #
  def frugal?
    digits.size > prime_division.flatten.reject{|d|d==1}.join.to_i.digits.size
  end
end
