class Integer
  def idoneal?
    n = self
    # Conjecture 2 (Euler) The largest idoneal number is n = 1848
    # Conjecture 5 (Gauss) If c(−4n) = 1, then n ≤ 1848.
    return false if n > 1848

    # Theorem 3 (Euler) 
    # 1. If n is an idoneal number which is a square, then n =  1, 4, 9, 16, or 25.
    return false if n.square? and ![1, 4, 9, 16, 25].include?(n)
    if n.divides?(4)
      n_over_4 = n/4

      # Theorem 12 (Grube)
      # (c) If n is idoneal and 4||n, then n = 4, 12, 28, 60
      return false if n_over_4.odd? and ![4,12,28,60].include?(n)
      
      # Theorem 12 (Grube)
      # If n is idoneal and 16|n, then n = 16, 48, 112, 240.
      if n.divides?(16)
        return [16, 48, 112, 240].include?(n)
      end

      # Theorem 3 (Euler) 
      # 6. If n ≡ 1 (mod 4) is idoneal and n != 1, then 4n is not idoneal.
      # 8. If n ≡ 8 (mod 16) is idoneal, then 4n is not idoneal.
      # 9. If n ≡ 16 (mod 32) is idoneal, then 4n is not idoneal.

      # Corollary 10 (Euler)
      # Thus, if n ≡ 0 (mod 32) or if n ≡ 4 (mod 16) and n > 4, then n is not idoneal.
      if n.modulo(32).zero? or n.modulo(16) == 4 and n > 4
        return false
      end
    end

    # Theorem 12 (Grube)
    # (a) If n is idoneal and 9|n, then n = 9, 18, 45, 72.
    return [9, 18, 45, 72].include?(n) if n.divides?(9)
    
    # Theorem 12 (Grube)
    # (b) If n is idoneal and 25|n, then n = 25.
    return n == 25 if n.divides?(25)
    
    # Corollary 8 
    # If n ≡ 3 (mod 4) is idoneal, then n = 3, 7 or 15.
    return [3, 7, 15].include?(n) if n.modulo(4) == 3
     
    # Perform a brute force test of whether n == ab + bc + ca; if it does, for
    # some distinct integer a, b, and c, n is not idoneal
    max = Math.sqrt(n/3)
    (1..max).each do |a|
      b_max = n - (a**2) - (a+1)**2 - (a+1)**2
      ((a+1)..b_max).each do |b|
        ab = a*b
        c_max = n - ab - b*(b+1)
        ((b+1)..c_max).each do |c|
          sum = ab + b*c + c*a
          return false if sum == n
          break if sum > n
        end
      end
    end
    true
  end
end
