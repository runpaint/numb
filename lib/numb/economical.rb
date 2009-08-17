# coding: utf-8
class Integer
  # A number which is either frugal or equidigital.
  #
  # Returns true if self is economical; false otherwise.
  #
  # See also Integer#equidigital? and Integer#frugal?.
  #
  #     243.economical?  #=> true
  #     7.economical?    #=> true
  #     989.economical?  #=> false
  #
  def economical?
    equidigital? or frugal?
  end
end
