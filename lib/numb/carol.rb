# coding: utf-8

class Integer

# A Carol number is an integer of the form <i>4<sup>n</sup> − 2<sup>n +
# 1</sup> − 1</i>.
#
# This method returns true if self is a Carol number; false otherwise.
#
#     −1.carol?  #=> true 
#     959.carol? #=> true 
#     32.carol?  #=> false
#
  def carol?
    return true if self == 7
    return true if self == -1
    a, b = to_s(2).match(/^(1+)0(1+)$/).to_a[1..-1]
    return false if (a.nil? or b.nil?)
    b.length == (a.length + 3)
  end
end
