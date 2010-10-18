# -*- coding: utf-8 -*-
class Integer
  # Returns the Kronecker symbol for `self`/`b`
  #
  # The Kronecker symbol is an extension of the Jacobi symbol to all
  # integers.
  #
  #    2.kronecker 3 #=> -1
  #    -8.kronecker 3 #=> 1
  #    6.kronecker 7 #=> -1
  #
  # @param [Integer] b The "denominator"
  # @return [Integer] -1, 0, 1 
  def kronecker b
    # The following algorithm is excerpted from Henri Cohen's A Course
    # in Computational Algebraic Number Theory, 3rd. ed. It appears on
    # page 48, and is entitled "Algorithm 1.4.12 (Kronecker-Binary).

    # Given a, b ∈ ℤ, this algorithm computes the Kronecker symbol
    # (a/b) (hence the Legendre symbol when b is an odd prime).
    raise ArgumentError unless b.is_a?(Integer)

    a = self
    # The following Array is a lookup table for computing (-1)^(a^2 -
    # 1)/8 (Cohen, p. 29)
    tab2 = [0, 1, 0, -1, 0, -1, 0, 1]

    # 1. [Test b = 0] If b = 0, then output 0 if |a| ≠ 1, 1 if |a| = 1
    # and terminate the algorithm
    return a.abs == 1 ? 1 : 0 if b.zero?

    # 2. [Remove 2's from b] If a and b are both even, output 0 and
    # terminate the algorithm. Otherwise, set v ← 0 and while b is
    # even set v ← v + 1 and b ← b/2. Then if v is even set k ← 1,
    # otherwise set k ← (-1)^(a^2 - 1)/8 (by table lookup, not by
    # computing (a^2 - 1)/8). Finally, if b < 0 set b ← -b, and if in
    # addition a < 0 set k ← -k.
    return 0 if a.even? and b.even?
    v, k = 0, nil
    while b.even?
      v += 1
      b = b.quo(2).to_i
    end
    k = v.even? ? 1 : tab2[a&7]
    if b < 0
      b = -b
      k =-k if a < 0
    end

    # 3. [Reduce size once] (Here b is odd and b > 0.) Set a ← a mod b
    raise unless b.odd? and b > 0
    a %= b

    loop do
      # 4. [Finished?] If a = 0, output 0 if b > 1, k if b = 1, and
      # terminate the algorithm
      return (b > 1) ? 0 : k if a.zero?

      # 5. [Remove powers of 2] Set v ← 0 and, while a is even, set v ←
      # v + 1 and a ← a/2. If v is odd, set k ← (-1)^((b^2 - 1)/8) * k
      v = 0
      while a.even?
        v += 1
        a = a.quo(2).to_i
      end
      k = ((-1)**((b**2).pred.quo 8) * k).to_i if v.odd?
      
      # 6. [Subtract and apply reciprocity] (Here a and b are odd.) Set
      # r ← b - a. If r > 0, then set k ← (-1)^((a-1)(b-1)/4) * k (using
      # if statements), b ← a and a ← r, else set a ← -r. Go to step 4.
      raise unless a.odd? and b.odd?
      r = b - a
      if r > 0
        # The optimisation below is from Cohen, p. 29
        k = -k unless (a & b & 2).zero?
        b = a
        a = r
      else
        a = -r
      end   
    end 
  end

  # Returns the Legendre symbol for `self`/`p`
  #
  # The Legendre symbol is a multiplicative function with values 1,
  # −1, 0: its value on a (nonzero) quadratic residue mod `p` is 1 and
  # on a quadratic non-residue is −1. It is defined only when `p` is
  # an odd prime.
  # 
  #    12345.legendre 331 #=> -1
  #    0.legendre 83 #=> 0
  #    55.legendre 10 #=> nil
  #    6.legendre 7 #=> -1
  #
  # @param [Integer] p The "denominator"
  # @return [Integer, nil] -1, 0, 1, or `nil` 
  def legendre p
    kronecker(p) if p.odd? and p > 2 and p.prime?
  end

  # Returns the Jacobi symbol for `a`/`n`
  #
  # For any integer `a` and any positive odd integer `n` the Jacobi
  # symbol is defined as the product of the Legendre symbols
  # corresponding to the prime factors of `n`.
  # 
  # @param [Integer] p The "denominator"
  # @return [Integer, nil] -1, 0, 1, or `nil` 
  def jacobi n
    kronecker(n) if n.odd? and n > 0
  end
end
