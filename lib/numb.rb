# coding: utf-8

class Integer
  def number_of_distinct_prime_factors
    prime_factors.uniq.size
  end
  alias :omega :number_of_distinct_prime_factors
  alias :ω :number_of_distinct_prime_factors

  def number_of_prime_factors
    prime_factors.size
  end
  alias :bigomega :number_of_prime_factors
  alias :Ω :number_of_prime_factors

  def prime_factors
    return [] if zero?
    prime_division.map{|pair| [pair.first] * pair.last}.flatten
  end

  def politeness
    divisors.select{|d| d > 1}.select{|d| d.odd?}.size
  end

  def proper_divisors
    divisors.reject {|d| d == self }
  end

  def divisors
    return [] unless positive?
    return [1, self] if prime?
    (1..Math.sqrt(self).floor).select { |n| (self % n).zero? }.
                               map {|n| [n, self/n]}.flatten.uniq
  end

  def sum_of_divisors
    @sod ||= divisors.reduce(:+)
  end
  alias :σ :sum_of_divisors

  def aliquot_sum
    return 0 if zero?
    σ - self
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

  def divides?(n)
    not n.zero? and (self % n).zero?
  end

  def sqrt
    Math.sqrt(self)
  end
end

require 'prime'

class Integer
  alias :primaries :prime_division
end

Dir.glob(File.dirname(__FILE__) + '/numb/*.rb').each {|file| require file}
