# coding: utf-8
class Integer
  def weird?
    return false unless positive?
    return false if odd? && self < (10 ** 17)
    not semiperfect? and abundant?
  end
  
  def unusual?
    prime_factors.max > sqrt
  end

  def untouchable?
    # * The first untouchable integer is 2
    # * Perfect numbers are never untouchable because they can be expressed
    #   as the sum of their own proper divisors
    # * If p is prime, the sum of the proper divisors of p**2 is p + 1;
    #   therefore, no untouchable number is one more than a prime.
    return false if self < 2 or perfect? or (self - 1).prime?
    (1..((self - 1)**2)).none? do |m|
      m.σ - m == self
    end
  end

  def unitary_divisor?(x)
    x.coprime?(self/x)
  end

  def powerful?
    return false unless positive?
    divisors = self.divisors
    divisors.select {|d| d.prime? }.all?{|prime| divisors.include? (prime ** 2)}
  end

  alias :handsome? :powerful?

  # An Achilles number is powerful but not a perfect power.
  #
  # Returns true if self is an Achilles number; false otherwise.
  #
  #     1152.achilles?  #=> true
  #     4563.achilles?  #=> true
  #     100.achilles?   #=> false
  #
  def achilles?
    powerful? and not perfect_power?
  end

  def perfect_power?
    return false unless positive?
    return true if self == 1
    divisors = self.divisors
    (2..Math.log2(self)).any? { |pow| divisors.any? {|div| (div ** pow) == self} } 
  end

  def brilliant?
    pfacts = prime_factors
    pfacts.size == 2 and pfacts.map{|f| f.to_s.size}.uniq.size == 1
  end

  def coprime?(x)
    gcd(x) == 1
  end

  alias :⊥ :coprime?
  alias :stranger? :coprime?

  # An enumeration of numbers coprime to `x` from `self` onward. If a
  # block is given, it is yielded to with the next number in the
  # sequence; otherwise, an `Enumerator` is returned.
  # 
  #     4.coprime(3).first(5) #=> [4, 5, 7, 8, 10]
  #
  # @param [Integer] x each number in the enumeration is coprime with `x`
  # @yield [Integer] n next number that is >= `self` and coprime with `x`
  # @return [Enumerator] returned if the block is omitted 
  def coprime(x)
    return enum_for(__method__, x) unless block_given?
    (self..Float::INFINITY).each do |n|
      yield n if n.coprime?(x)
    end
  end

  # A deficient number is a number n for which σ(n) < 2n. That is, the sum of
  # its divisors are less than the number. (To calculate the sum of divisors
  # for an arbitrary integer see Integer#σ).
  #
  # Returns true if the number is deficient; false otherwise.
  #
  #     8.deficient?  #=> true
  #     27.deficient? #=> true
  #     6.deficient?  #=> false
  #
  def deficient?
    return false unless positive?
    σ < (2 * self)
  end

  alias :defective? :deficient?

  def e_divisors
    return [1] if self == 1
    pfacts = primaries
    comb = pfacts.map{|p,a| (1..a).select{|b| a.divides?(b)}.map{|b| p**b}}
    comb.flatten.permutation(pfacts.size).select do |perm|
      perm.each_with_index.all?{|x,i| comb[i].include? x}
    end.map{|perm| perm.reduce(:*)}
  end

  # An extravagant number has fewer digits than the number of digits in its
  # prime factorization (including exponents).
  #
  # Returns true if self is extravagant; false otherwise. Aliased to
  # Integer#wasteful?.
  #
  #     234.extravagant?  #=> true
  #     87.extravagant?   #=> true
  #     81.extravagant?   #=> false
  #
  def extravagant?
    digits.size < primaries.flatten.reject{|d|d==1}.join.to_i.digits.size
  end

  alias :wasteful? :extravagant?

  def politeness
    divisors.select{|d| d > 1}.select{|d| d.odd?}.size
  end

  def impolite? 
    not polite?
  end

  def polite? 
    return true if self == 1
    politeness.positive?
  end

  def proper_divisors
    divisors.reject {|d| d == self }
  end

  def divisors
    return [] unless positive?
    return [1, self] if prime?
    (1..isqrt).select { |n| (self % n).zero? }.
               map {|n| [n, self/n]}.flatten.uniq
  end
  memoize :divisors

  def sum_of_divisors(k=1)
    (k == 1 ? divisors : divisors.map{|d| d**k}).reduce(:+)
  end
  
  alias :σ :sum_of_divisors
  
  memoize :σ

  def aliquot_sum
    return 0 if zero?
    σ - self
  end

  def divides?(n)
    not n.zero? and (self % n).zero?
  end

  def σe
    # TODO: If squarefree, the sum of a number’s e-divisors is the number
    # itself. Do we gain anything significant by special-casing this?
    e_divisors.reduce :+
  end

  alias :sum_of_e_divisors :σe

  def σ∞
    infinitary_divisors.reduce :+
  end

  alias :sum_of_infinitary_divisors :σ∞
  alias :isigma :σ∞

  def sum_of_unitary_divisors
    divisors.select{|d| unitary_divisor?(d)}.reduce(:+) or 0
  end

  def highly_composite?
    return false if self > 6 and not (abundant? or primorial_product?)
    return true if [1,4,36].include?(self)
    minimal? and (self - 1).downto(1).all?{|n| τ > n.τ}
  end

  alias :julian? :highly_composite?

  def d?
    knödel?(3)
  end

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

  # An equidigital number has the same number of digits as
  # the number of digits in its prime factorization (including exponents). 
  #
  # For example, 35 is equidigital because it has two digits and two 1-digit
  # prime factors (5 and 7).
  #
  # Returns true if self is equidigital; false otherwise.
  #
  #     81.equidigital?    #=> true
  #     49.equidigital?    #=> true
  #     1287.equidigital?  #=> false
  #
  def equidigital?
    digits.size == primaries.flatten.reject{|d|d==1}.join.to_i.digits.size
  end

  def giuga?
    composite? and prime_factors.uniq.all? do |p|
      ((self / p) - 1).divides?(p)
    end
  end

  def harshad?
    self >= 1 and (self % digital_sum).zero?
  end

  alias :niven? :harshad?
  alias :multidigital? :harshad?

  def hoax?
    return false unless composite?
    sum_of_digits == prime_factors.uniq.map{|f| f.sum_of_digits}.reduce(:+)
  end

  def infinitary_divisors
    pf = Hash[prime_factors.uniq.map{|f| [f, 0]}]
    bin = divisors.map do |d|
      prime_divisors = pf.map(&:first)
      [d, pf.merge(Hash[d.primaries]).
        values.
        map{|v| sprintf("%.#{to_s(2).size}b", v)}.join]
    end
    bin = Hash[bin]
    target = bin[self].chars.map.with_index.to_a.select{|a,b| a == '0'}.map(&:last)
    bin.select{|d,b| target.all?{|i| b[i] == '0'}}.keys.sort
  end

  def ore?
    div = divisors
    Rational(div.size, div.map{|d| d.reciprocal}.reduce(:+)).denominator == 1
  end

  alias :harmonic_divisor? :ore?

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

  def rhonda?(base=10)
    d = base == 10 ? digits : to_s(base).split(//).map{|_| _.to_i(base)} 
    d.reduce(:*) == base * (prime_factors.reduce(:+) || 0)
  end

  def smith?
    return false if prime?
    digital_sum == primaries.map{|d,e| d.digital_sum * e}.reduce(:+)
  end

  def smooth?(b)
    prime_factors.none?{|f| f > b}
  end

  def rough?(k)
    prime_factors.all?{|f| f >= k}
  end

  def super_poulet?
    poulet? and divisors.all?{|d|  ((2**d) - 2).divides?(d)}
  end

  # Algorithm derived from Formulas for pi(n) and the n-th prime by Sebastian
  # Martin Ruiz and Jonathan Sondow [arXiv:math/0210312v2 [math.NT]]

  # Returns the number of divisors of self
  def τ 
    # TODO: Consider something simpler, and perhaps faster, like
    # primaries.map(&:last).map(&:succ).reduce(:*)
    n = self
    return @nod if defined?(@nod)
    @nod = (1..isqrt).
      map {|i|  n.quo(i).to_i - (n - 1).quo(i).to_i }.
      reduce(:+) * 2
    @nod -= 1 if square?
    @nod
  end

  alias :number_of_divisors :τ 
  alias :d :τ 
  memoize :τ 

  def perfect_power
    return 1 if (n = self) <= 1
    this = (n - 1).perfect_power.succ
    this += 1 while (this.prime? or not this.perfect_power?)
    this
  end
  memoize :perfect_power

  def first_with_n_divisors
    if zero? then 0
    elsif self == 1 then 1
    elsif not positive? then nil
    else
      pf = prime_factors
      if pf.uniq == [2]
        list = []
        Prime.each do |prime|
          break if prime > self
          list << prime
          exp = 1
          loop do
            pow2 = 2 ** exp
            break if pow2 > self
            prime **= pow2
            break if prime > self
            list << prime
          end
        end
        list.sort.uniq.first(pf.size).reduce(:*)
      else
        limit = Prime.first(pf.size).zip(pf.reverse).map{|b,e| b**(e-1)}.reduce(:*)
        neighbour = ->(e) { (self/e).divisors.reject{|d| d > e} }
        x, div, exponents = self, divisors, {}
        Prime.each do |b| 
          d = begin
            max_exponent = Math.log(limit, b).floor
            div.reject{|d| d > max_exponent}
          rescue FloatDomainError
            div
          end.sort.reverse - [1]
          unless b == 2
            prev_neighbours = exponents[exponents.keys.last].values.flatten
            d.reject!{|e, n| not prev_neighbours.include?(e)}
          end
          exponents[b] = Hash[d.map{|e| [e, neighbour.(e)]}]
          break if (x /= b) < 1
        end
        complete_chain = ->(b, e, goal=self, chain=nil) do
          chain ||= {chain: [[b, e]]}
          return chain unless exponents.key?(b) and exponents[b].key?(e)
          exponents[b][e].map do |n|
            this = {chain: chain[:chain].dup}
            this[:chain].pop if this[:chain].last.first == b.next_prime
            this[:chain] << [b.next_prime, n]
            e * n < goal ? complete_chain[b.next_prime, n, goal/e, this] : this
          end
        end

        exponents[2].keys.map do |e,|
          complete_chain[2, e].flatten.map{|c| Hash[c[:chain]]}.
            select{|c| c.values.reduce(:*) == self}.
            map{|c| c.map{|b,e| b**(e-1)}.reduce(:*)}.
            reject{|prod| prod > limit}
        end.flatten.min or limit
      end
    end
  end

  def minimal?
    τ.first_with_n_divisors == self
  end

  def square_part
    divisors.sort.reverse.each{|d| return d if d.square?}
  end

  def ruler
    (2 * self).primaries.first.last
  end

  def smarandache
    if    self == 1                       then 1
    elsif prime?                          then self
    elsif factorial?                      then factorial_of?
    elsif primaries.map(&:last).uniq == 1 then primaries.last.first
    elsif primaries.size == 1
      p, k = primaries.first
      return p*k if k < p
      i = k/p
      loop do
        sum = i
        r = i / p
        while r > 0
          sum += r
          r /= p
        end
        return i*p if sum >= k
        i += 1
      end
    else
      primaries.map{|b,e| (b**e).smarandache}.max
    end
  end

  def ramanujan_tau
    return 1 if (n = self) == 1
    n**4 * n.σ - 24 * (1...n).map do |k|
      k**2 * (35 * k**2 - 52 * k * n + 18 * n**2) * k.σ * (n-k).σ
    end.reduce(:+)
  end

  def ordinary?
    return true if self == 1
    pf = prime_factors.sort.reverse
    Prime.first(pf.size).
          zip(pf).
          map{|b,e| b**(e-1)}.
          reduce(:*) == first_with_n_divisors
  end

  def exceptional?
    not ordinary?
  end

  # Computes the extended greatest common divisor of `self` and `b`
  #
  # The extended Euclidean algorithm is an extension to the Euclidean
  # algorithm for finding the GCD of integers `a` and `b`: it also
  # finds the integers `x` and `y` in Bézout's identity:
  #
  #    ax + by = gcd(a, b)
  #
  # This method takes `self` as `a`, and `b` as an argument, and
  # returns their GCD, `x`, and `y`
  #
  # For example, `21.xgcd(48)` is `[3, 7, -3]` because `21.gcd(48)` is
  # `3`, and `21 * 7 + 48 * -3` is `3`.
  #
  #     3.xgcd(-65) #=> [1, 22, 1]
  #     56.xgcd(72) #=> [8, 4, -3]
  #
  # @param [Integer] b the number `self` is divided by
  # @return [Array<Integer>] GCD, `x`, and `y`
  def xgcd b
    a = self
    x, y, u, v = 0, 1, 1, 0
    while a != 0
      q, r = b/a, b%a 
      m, n = x-u*q, y-v*q
      b, a, x, y, u, v = a, r, u, v, m, n
    end    
    self < 0 ? [b, x, y].map(&:-@) : [b, x, y]
  end
end
