# coding: utf-8
class Integer
  def φ
    return 1 if self == 1
    return self - 1 if prime?
    (prime_factors.uniq.map{|f| 1 - f.reciprocal}.reduce(:*) * self).to_i
  end

  alias :totient :φ


  # Returns `true` if `self` is equal to the sum of its iterated
  # totients, otherwise `false`
  #
  # For example:  φ(183) = 120
  #               φ(120)  = 32
  #               φ(32)   = 16
  #               φ(16)    = 8
  #               φ(4)     = 2
  #               φ(2)     = 1
  # 120 + 32 + 16 + 8 + 4 + 2 + 1 = 183
  # @return [true, false] `true` if `self` is a perfect totient; `false` otherwise.
  def perfect_totient?
    # TODO: Possible optimisation: once the totient is a power of 2,
    # which we identify using bit ops, it is predictable what totients
    # will follow. For example, consider 441027. Its iterated totients
    # are [294012, 97992, 32640, 8192, 4096, 2048, 1024, 512, 256,
    # 128, 64, 32, 16, 8, 4, 2, 1], i.e. 17 iterations are
    # needed. Once we hit 8192, we can derive [2, 4, 8, 16, 32, 64,
    # 128, 256, 512, 1024, 2048, 4096, 8192], add the 1, then return.

    # TODO: The more obvious tweak is to return true immediately when
    # self is a power of 3. I want to write a #power_of? predicate for
    # the general case first, then benchmark it for use here.
    return false if even?
    a = [totient]
    sum = a.first
    until a.last == 1 or sum > self
      a << a.last.totient
      sum += a.last
    end
    sum == self
  end
end
