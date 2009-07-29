# coding: utf-8

require 'prime'

class Integer

  def abundant?
    return false unless self > 0
    sum_of_divisors > (2 * self)
  end

  def automorphic?(n=1)
    (n * self ** 2).to_s.end_with? self.to_s
  end
  alias :curious? :automorphic?

  def deficient?
    return false unless self > 0
    sum_of_divisors < (2 * self)
  end

  def dudeney?
    Math.cbrt(self) == self.digits.reduce(:+)
  end

  def dihedral_prime?
    return false unless prime?
    !!to_s.match(/^[01825][018253]*$/)
  end

  def emrip?
    return false unless prime?
    reversed = to_s.reverse.to_i
    reversed != self and reversed.prime?
  end

  def economical?
    equidigital? or frugal?
  end

  def equidigital?
    digits.size == prime_division.flatten.reject{|d|d==1}.join.to_i.digits.size
  end

  def extravagant?
    digits.size < prime_division.flatten.reject{|d|d==1}.join.to_i.digits.size
  end

  def factorion?
    [1, 2, 145, 40585].include? self
  end

  def frugal?
    digits.size > prime_division.flatten.reject{|d|d==1}.join.to_i.digits.size
  end
  
  def mms_pair?(other)
    return false unless (self == other.succ) || (other == self.succ)
    sum = [self,other].map do |n|
      (n.digits + n.prime_factors.map{|p| p.digits}.flatten).reduce(:+)
    end
    sum.first == sum.last
  end
  alias :maris_mcgwire_sosa_pair? :mms_pair?

  def prime_factors
    prime_division.map{|pair| [pair.first] * pair.last}.flatten
  end

  def kynea?
    return true if self == 7
    a, b = to_s(2).match(/^(10+)(1+)$/).to_a[1..-1]
    return false if (a.nil? or b.nil?)
    a.length == (b.length - 1)
  end

  def kaprekar?
    return true if self == 1
    sdigits = (self ** 2).digits
    (1..sdigits.size-1).each do |first|
      a = sdigits.first(first).join.to_i
      b = sdigits.last(sdigits.size-first).join.to_i
      next if [a,b].any?{|n| n.zero?}
      return true if (a + b) == self
    end
    false
  end

  def carol?
    return true if self == 7
    return true if self == -1
    a, b = to_s(2).match(/^(1+)0(1+)$/).to_a[1..-1]
    return false if (a.nil? or b.nil?)
    b.length == (a.length + 3)
  end

  def keith?
    return false unless (n = self) > 9
    terms = n.to_s.split(//).map{|d| d.to_i}
    loop do
      return true if (n = terms.reduce(:+)) == self
      return false if n > self
      terms.shift
      terms << n
    end
    false
  end

  def parasitic?(n=nil)
    return (1..9).any?{|x| parasitic?(x)} if n.nil?
    return true if (n == 1 && self == 1)
    return false unless self > 9
    raise ArgumentError unless (n > 0 && n < 10)
    (n*self) == [digits.last, digits[0..-2]].join.to_i
  end

  def perfect?
    return false if self < 6 or self.odd? or self.to_s !~ /(6|8)$/
    return false if self != 6 and digital_root != 1  
    divisors = proper_positive_divisors
    return false unless (divisors.size + 1).even?
    divisors.reduce(:+) == self
  end

  # Implementation of Stewart, B. M. (1954), "Sums of distinct divisors",
  # American Journal of Mathematics 76: 779–785, doi:10.2307/2372651,
  # MR0064800
  def practical?
    sum = 1
    k = 2
    n = self
    while (n >= k)
      s = 1
      u = 0
      while (n % k == 0)
        n = n/k
        s = s * k + 1
        u += 1
      end
      unless (u == 0)
        return false if (k > sum + 1)
        sum *= s
      end
      k += (k == 2) ? 1 : 2
    end
    true
  end

  def perfect_power?
    return false unless self > 0
    return true if self == 1
    divisors = positive_divisors
    (2..Math.log2(self)).any? { |pow| divisors.any? {|div| (div ** pow) == self} } 
  end

  def polite? 
    return true if self == 1
    politeness > 0
  end

  def impolite? 
    not polite?
  end
  
  def triangular?
    return false if self < 0
    root = Math.sqrt(8 * self + 1)
    root == root.floor
  end

  def trimorphic?
    (self ** 3).to_s.end_with? self.to_s
  end

  def self_descriptive?(base=10)
    dig = digits
    return false unless digits.size == base
    dig.each_with_index{|d,i| return false unless dig.count(i) == d}
    true
  end

  def semi_perfect?
    return false if deficient?
    return true if perfect?
    divisors = proper_positive_divisors
    1.upto(divisors.size-1) do |size|
      divisors.combination(size) do |comb|
        return true if comb.reduce(:+) == self
      end
    end
    false
  end
  alias :pseudo_perfect? :semi_perfect?

  def square?
    return false if self < 0
    root = Math.sqrt(self)
    root == root.floor
  end

  def square_free?
    positive_divisors.reject{|d| d==1}.none? {|d| d.square?}
  end

  def smith?
    return false if prime?
    digital_sum == prime_division.map{|d,e| d.digital_sum * e}.reduce(:+)
  end

  def smarandache_wellin?
    prime_str = ''
    Prime.each do |prime|
      prime_str << prime.to_s
      return true if prime_str == to_s
      return false if prime_str.length >= to_s.length
    end
  end

  def politeness
    positive_divisors.select{|d| d > 1}.select{|d| d.odd?}.size
  end

  def hilbert?
    return false unless self > 0
    ((self - 1) % 4) == 0
  end

  def powerful?
    return false unless self > 0
    require 'prime'
    divisors = positive_divisors
    divisors.select {|d| d.prime? }.all?{|prime| divisors.include? (prime ** 2)}
  end

  def achilles?
    powerful? and not perfect_power?
  end

  def weird?
    return false unless self > 0
    return false if odd? && self < (10 ** 17)
    not semi_perfect? and abundant?
  end

  def happy?
    return false unless self > 0
    n = self
    sad = '4 16 37 58 89 145 42 20'
    seq = ""
    loop do
      n = n.digits.map{|d| d ** 2}.reduce(:+)
      seq << n.to_s  << ' '
      return true if n == 1
      return false if seq.include? sad   
    end
  end

  def harshad?
    return false unless self >= 0
    (self %  digital_sum) == 0
  end
  alias :niven? :harshad?

  def nivenmorphic?
    return true if self == 0
    return false unless self > 0
    niven? && self.to_s.end_with?(digital_sum.to_s)
  end
  alias :harshadmorphic? :nivenmorphic?

  def narcissistic?
    self == digits.map{|d| d ** digits.size}.reduce(:+)
  end
  alias :armstrong? :narcissistic?
  alias :plus_perfect? :narcissistic?

  def vampire?
    return false unless !prime? and digits.size.even?
    digits.permutation.map do |perm|
      [:first,:last].map {|pos| perm.send(pos,(digits.size/2)).join.to_i }.sort
    end.uniq.any? do |fangs|
      fangs.reduce(:*) == self
    end
  end

  def undulating?
    dig = digits
    return false unless digits.size >= 3 and digits[0] != digits[1]
    dig.each_with_index do |d,i| 
      return false unless i.odd? ? d == dig[1] : d == dig[0]
    end
    true
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

  def digits
    self.to_s.split(//).map{|d| d.to_i}
  end

  def factor?(n)
    return false if n == 0
    (self % n) == 0
  end
end
