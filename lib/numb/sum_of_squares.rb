class Integer
  def next_prime
    p = succ
    p += 1 until p.prime?
    p
  end
  
  # The algorithm below is based heavily on that described by 
  # Peter Shorn at http://www.schorn.ch/howto.html

  # Special cases not handled by the following algorithm
  SPECIAL_DECOMP = {
    2 => [1, 1], 3 => [1, 1, 1], 10 => [1, 3], 34 => [3, 3, 4], 
    58 => [3, 7], 85 => [6, 7], 130 => [3, 11], 214 => [3, 6, 13],
    226 => [8, 9, 9], 370 => [8, 9, 15], 526 => [6, 7, 21], 
    706 => [15, 15, 16], 730 => [1, 27], 1414 => [6, 17, 33],
    1906 => [13, 21, 36], 2986 => [21, 32, 39], 9634 => [56, 57, 57],
  }

  def sum_of_squares
    n = self
    raise ArgumentError if n < 0
    return [0, 0, 0, n] if n <= 1

    decompose_prime = ->(p) do
      raise ArgumentError unless p.prime? and p.modulo(4) == 1
      b = 2
      unless p.modulo(8) == 5
        b = 3
        b = b.next_prime while (b**((p-1)/2)).modulo(p) == 1
      end
      b = (b**((p-1)/4)).modulo(p)
      a = p
      a, b = b, a.modulo(b) while (b**2) > p
      [b, a.modulo(b)]
    end
    
    isqrt = ->(i) do
      s = Math.sqrt(i).to_i
      [s, i - s * s]
    end
    
    # Pad return Array with leading zeroes so result is the sum of exactly 4
    # squares
    zero_pad = ->(l) { l + ([0] * (4 - l.size)) }
    
    # Remove powers of 4
    v = 1                 
    while (n & 3).zero?    
      n >>= 2             
      v += v
    end

    sort_scaled = ->(l) { l.sort.map{|x| v * x}}
    
    sq, p = isqrt[n]
    # n is a squarei; return its square root
    return [0, 0, 0, v * sq] if p.zero?
    
    # n is prime, n % 4 = 1
    # otherwise n was not a prime
    return sort_scaled[zero_pad[decompose_prime[n]]] if (n & 3 == 1) and n.prime?
    
    delta = 0
    if  n & 7 == 7   # Need 4 squares, subtract largest square delta^2
                     # such that (n > delta^2) and (delta^2 % 8 != 0)
      delta, n = sq, p
      
      if  (sq & 3).zero?
        delta -= 1
        n += delta + delta + 1
      end
      # sq % 4  = 0 -> delta % 8 in [3, 7]       ->
      # delta^2 % 8 = 1     -> n % 8 = 6
      # sq % 4 != 0 -> delta % 8 in [1, 2, 3, 5, 6, 7] ->
      # delta^2 % 8 in [1, 4] -> n % 8 in [3, 6]
      # and this implies n % 4 != 1, i.e. n cannot be a sum of two squares
      sq, p = isqrt[n]
      # sq^2 != n since n % 4 = 3 which is never true for a square
    end

    # This implies that n is a sum of three squares - now check whether n
    # is one of the special cases the rest of the algorithm could not handle.
    # Retrieve pre-computed result and scale with v
    return sort_scaled[zero_pad[[delta] + SPECIAL_DECOMP[n]]] if SPECIAL_DECOMP.key?(n)

    # Now perform search distinguishing two cases noting that n % 4 != 0
    # Case 1: n % 4 = 3, n = x^2 + 2*p, p % 4 = 1,
    # p prime, p = y^2 + z^2 implies n = x^2 + (y + z)^2 + (y - z)^2
    if  n & 3 == 3
      if (sq & 1).zero?
        sq -= 1
        p += sq + sq + 1
      end
      p >>= 1
      loop do
        if  p.prime?
          r0, r1 = decompose_prime[p]
          return sort_scaled[[delta, sq, r0 + r1, (r0 - r1).abs]]
        end
        sq -= 2             # Next sq

        raise RuntimeError if sq < 0
        p += sq + sq + 2        # Next p
      end
    end
    # Case 2: n % 4 = 1 or n % 4 = 2, n = x^2 + p,
    # p % 4 = 1, p prime, p = y^2 + z^2 implies n = x^2 + y^2 + z^2
    if  ((n - sq) & 1).zero?
      sq -= 1
      p += sq + sq + 1
    end

    loop do
      return sort_scaled[[delta, sq] + decompose_prime[p]] if p.prime?
      sq -= 2               # Next sq

      raise RuntimeError if sq < 0
      p += 4 * (sq + 1)         # Next p
    end
  end
end
