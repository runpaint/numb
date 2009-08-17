# coding: utf-8
class Integer
  # A Dudeney number is a positive integer that is a perfect cube such that
  # the sum of its decimal digits is the cube root of the number. 
  #
  # Returns true if self is a Dudeney number; false otherwise.
  #
  #     4913.dudeney?  #=> true
  #     5832.dudeney?  #=> true
  #     98.dudeney?    #=> false
  #
  def dudeney?
    Math.cbrt(self) == self.digits.reduce(:+)
  end
end
