# coding: utf-8
class Integer
  def primitive_abundant?
    abundant? and proper_divisors.all?(&:deficient?)
  end
end
