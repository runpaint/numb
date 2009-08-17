# coding: utf-8
class Integer
  # An emrip is a prime whose reversed digits give a different prime. For
  # example, 17 is an emrip because 71 is also prime.
  #
  # Returns true if self is an emrip; false otherwise.
  #
  #     1009.emrip?  #=> true
  #     1193.emrip?  #=> true
  #     7.emrip?     #=> false
  #
  def emrip?
    return false unless prime?
    reversed = to_s.reverse.to_i
    reversed != self and reversed.prime?
  end
end
