# -*- coding: utf-8 -*-
class Integer
  # Returns the multiplicative order of `self` % `m`, or `nil` if
  # `self` is not coprime to `m`
  #
  # Given an integer `self` and a positive integer `m` with gcd(`a`,
  # `m`) = 1, the multiplicative order of `self` modulo `m` is the
  # smallest positive integer `k` with: `self`^`k` ≡ 1 (modulo `m`).
  #
  # @param [Integer] m the modulus
  # @return [Integer, nil] the power, `k`, or `nil` if `self` and `m` are not coprime
  def ord(m)
    return unless coprime?(m)
    m.prime_division.inject(1) do |result, f|
      (p, k), r = f, 1
      pk = p ** k
      # We could calculate the totient here as `(p - 1) * p ** (k -
      # 1)`, but it feels cleaner to separate the logic
      (t = pk.φ).prime_division.each do |q, e|
        x = power_mod(t / q ** e, pk)
        while x != 1
          r *= q
          x = x.power_mod(q, pk)
        end
      end      
      result.lcm(r)
    end
  end
end
