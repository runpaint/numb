class Integer
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
end
