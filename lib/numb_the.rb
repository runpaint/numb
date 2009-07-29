# coding: utf-8

require 'prime'
%w{abundant achilles automorphic carol deficient dihedral_prime dudeney
   economical emrip equidigital extravagant factorion friedman frugal happy
   harshad hilbert impolite kaprekar keith kynea mms_pair narcissistic
   nivenmorphic parasitic perfect perfect_power polite powerful practical self
   self_descriptive semi_perfect semiprime smarandache_wellin smith square
   square_free triangular trimorphic undulating vampire weird}.each do |predicate|
  require_relative "numb_the/#{predicate}"
end

class Integer

  def prime_factors
    prime_division.map{|pair| [pair.first] * pair.last}.flatten
  end

  def politeness
    positive_divisors.select{|d| d > 1}.select{|d| d.odd?}.size
  end

  def proper_positive_divisors
    positive_divisors.reject {|d| d == self }
  end

  def positive_divisors
    return [] unless self >= 0
    (1..Math.sqrt(self).floor).select { |n| (self % n).zero? }.
                              map {|n| [n, self/n]}.flatten.uniq
  end

  def sum_of_divisors
    positive_divisors.reduce(:+)
  end
  alias σ :sum_of_divisors

  def digital_root
    self == 0 ? 0 : 1 + ((self - 1) % 9)
  end

  def digital_sum
    digits.reduce(:+)
  end
  alias :sum_of_digits :digital_sum
  alias :sod :digital_sum

  def digits
    self.to_s.split(//).map{|d| d.to_i}
  end

  def factor?(n)
    return false if n == 0
    (self % n) == 0
  end
end
