# coding: utf-8
class Integer
  def core
    raise ArgumentError if self <= 0
    divisors.sort.select{|m| (self/m).square?}.first
  end
end
