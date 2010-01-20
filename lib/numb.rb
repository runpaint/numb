# coding: utf-8

libs = %w{abundancy abundant achilles almost_perfect almost_prime amicable
          apocalyptic aspiring augmented_amicable automorphic balanced_prime 
          binomial biquadratic breeder brown carmichael carol centered_n_gonal 
          centered_triangular congruum composite coprime core cototient 
          cube d decagonal deficient dodecagonal dihedral_prime dudeney 
          economical emrip equidigital extravagant factorial factorion 
          fermat_pseudoprime fibonacci friendly frugal happy harshad 
          heptagonal hexagonal highly_composite highly_abundant hilbert 
          hyperperfect idoneal impolite integer_p interprime 
          jacobsthal_lucas kaprekar keith knodel k_perfect kynea 
          leonardo leyland lucas lucas_carmichael mersenne_prime minimal 
          mms_pair mobius myriagonal narcissistic next_prev_prime n_gonal 
          nivenmorphic noncototient nth_prime number_of_divisors octagonal 
          ordinal ore parasitic pentagonal perfect perfect_power polite 
          polydivisible positive poulet powerful practical prime_count 
          prime_signature primitive_pseudoperfect primorial pronic proth 
          quarticfree refactorable repunit rhonda rough self self_descriptive 
          semiperfect semiprime smarandache_wellin smith smooth 
          sophie_germain_prime sphenic square square_free sublime 
          sum_of_squares superabundant superperfect totient triangular 
          trimorphic undulating unitary_perfect unitary_divisor untouchable
          vampire weird zeisel zerofree
}

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
    return @divisors if defined?(@divisors)
    return [] unless self >= 0
    return [1, self] if prime?
    @divisors = (1..Math.sqrt(self).floor).select { |n| (self % n).zero? }.
                                           map {|n| [n, self/n]}.flatten.uniq
  end

  def sum_of_divisors
    @sod ||= divisors.reduce(:+)
  end
  alias :σ :sum_of_divisors

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
end

require 'prime'

libs.each do |predicate|
  require File.join(File.dirname(__FILE__), "numb/#{predicate}")
end
