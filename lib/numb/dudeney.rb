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
    # The ugly hack below is seemingly needed for 1.8 compatibility. I ave
    # yet to understand why.
    Math.cbrt(self).to_s.sub(/\.0$/,'') == self.digits.reduce(:+).to_s
  end
end
