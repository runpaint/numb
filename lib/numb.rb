# coding: utf-8

libs = %w{abundant achilles amicable aspiring automorphic balanced_prime 
          carmichael carol composite cube decagonal deficient dodecagonal 
          dihedral_prime  dudeney economical emrip equidigital extravagant 
          factorion fibonacci frugal happy harshad heptagonal hexagonal hilbert 
          hyperperfect impolite kaprekar keith kynea lucas lucas_carmichael 
          mersenne_prime mms_pair mobius myriagonal narcissistic nivenmorphic 
          n_gonal octagonal ordinal parasitic pentagonal perfect perfect_power
          polite polydivisible powerful practical primitive_pseudoperfect 
          pronic repunit rhonda self self_descriptive semiperfect semiprime 
          smarandache_wellin smith sophie_germain_prime sphenic square 
          square_free superperfect triangular trimorphic undulating vampire 
          weird
}

class Integer
  
  def number_of_distinct_prime_factors
    prime_factors.uniq.size
  end
  alias :omega :number_of_distinct_prime_factors

  def number_of_prime_factors
    prime_factors.size
  end
  alias :bigomega :number_of_prime_factors

  def prime_factors
    return [] if zero?
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

begin
  require 'prime'
  libs << 'ruby1.9'
rescue LoadError
  libs.unshift('ruby1.8','prime')
end

libs.each do |predicate|
  require File.join(File.dirname(__FILE__), "numb/#{predicate}")
end
