# coding: utf-8
require 'prime'

class Integer
  def almost_prime?(k)
    Ω == k
  end

  def balanced_prime?
    return false unless prime? and self >= 5
    primes, before = Prime.each, 2
    primes.each do |prime|
      return ((before + primes.next) / 2) == self if prime == self
      before = prime
    end
  end

  # A dihedral prime is a prime number that appears as itself or another prime
  # when rendered on a seven-segment display of a calculator and... 
  #
  # * Rotated 180°.  
  # * Mirrored.  
  # * Rotated 180° and mirrored.
  #
  # For example, 120121 is a dihedral prime. It is 121021 when rotated,
  # 151051 (another prime) when mirrored, and 150151 when rotated and
  # mirrored.
  #
  # Returns true if self is a dihedral prime; false otherwise.
  #
  #     101.dihedral_prime?  #=> true
  #     181.dihedral_prime?  #=> true
  #     7.dihedral_prime?    #=> false
  #
  def dihedral_prime?
    return false unless prime? and to_s.match(/^[01825]+$/)
    mirror = ->(n){ n.to_s.gsub(/([25])/){|orig| orig == '2' ? '5' : '2'}.to_i }
    [reverse, mirror[self], mirror[reverse]].all?(&:prime?)
  end

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
    prime? and reverse != self and reverse.prime?
  end

  def full_reptend_prime?
    prime? and primitive_root?(10)
  end

  def interprime?
    return false if prime?
    self == (next_prime + prev_prime)/2
  end

  def mersenne_prime?
    mersenne? and prime?
  end

  def next_prime
    p = succ
    p += 1 until p.prime?
    p
  end
  
  def prev_prime
    p = self - 1
    p -= 1 until p.prime?
    p
  end

  def fermat_pseudoprime?(a=10)
    return false unless composite?
    q = self
    raise ArgumentError unless a >= 2
    raise ArgumentError unless (q - 2) >= a
    (a**(q-1)).modulo(q) == 1
  end

  # Algorithm derived from Formulas for pi(n) and the n-th prime by Sebastian
  # Martin Ruiz and Jonathan Sondow [arXiv:math/0210312v2 [math.NT]]

  # Returns the number of primes equal to or less than self
  def π
    x = self
    return 0 if x == 1
    @prime_count ||= ([2] + (3..x).select(&:odd?)).map do |j|
      1 + ( ((2 - j.τ)/j).floor ).floor
    end.reduce(:+)
  end
  alias :prime_pi :π
  alias :prime_count :π

  def prime_signature
    prime_division.map{|base, exponent| exponent}.sort.reverse
  end

  # Algorithm derived from Formulas for pi(n) and the n-th prime by Sebastian
  # Martin Ruiz and Jonathan Sondow [arXiv:math/0210312v2 [math.NT]]

  # Returns, after many eons, the nth prime, where n = self
  def nth_prime
    n = self
    return 2 if n == 1
    raise ArgumentError if n < 1
    (2..( 2*n * Math.log(n) + 2).floor).map do |k|
      1 - (k.π.fdiv(n)).floor
    end.reduce(:+) + 2
  end

  alias :prime :nth_prime
  
  def sophie_germain_prime?
    prime? and (2*self).succ.prime?
  end

  def safe_prime?
    prime? and odd? and ((self - 1) / 2).prime?
  end

  def semiprime?
    Ω == 2
  end

  def composite?
    self > 1 and not prime?
  end

  def twin_prime?(p)
    [p, self].all?(&:prime?) and p == self + 2
  end


  alias :primaries :prime_division

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

  def wieferich_prime?
    return false unless prime?
    (2**(self - 1)).modulo(self ** 2) == 1
  end
end
