# coding: utf-8
class Integer
  # A factorion is a number equal to the sum of the factorials of its decimal
  # digits.
  #
  # Returns true if self is a factorion; false otherwise.
  #
  #     145.factorion?    #=> true
  #     40585.factorion?  #=> true
  #     200.factorion?    #=> false
  #
  def factorion?
    [1, 2, 145, 40585].include? self
  end
end
