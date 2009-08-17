# coding: utf-8
class Integer

  # An automorphic number is a number whose square terminates in the number
  # itself. That is, k is automorphic if the final digits of k<sup>2</sup> are
  # the digits of k.
  #
  # More generally, an <i>n</i>-automorphic number is one of the form
  # <i>nk<sup>2</sup></i> which has its last digits equal to <i>k</i>.
  # <i>n</i> may be supplied as an argument to this method; otherwise it
  # defaults to 1.
  #
  # Returns true if the number is automorphic; false otherwise. Aliased to
  # Integer#curious?.
  #
  #     25.automorphic?    #=> true
  #     9376.automorphic?  #=> true
  #     600.automorphic?   #=> true
  #
  def automorphic?(n=1)
    (n * self ** 2).to_s.end_with? self.to_s
  end
  alias :curious? :automorphic?
end
