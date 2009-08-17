# coding: utf-8
class Integer
  def powerful?
    return false unless self > 0
    require 'prime'
    divisors = positive_divisors
    divisors.select {|d| d.prime? }.all?{|prime| divisors.include? (prime ** 2)}
  end
end