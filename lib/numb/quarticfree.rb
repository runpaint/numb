class Integer
  def quarticfree?
    self == 1 or prime_signature.max < 4
  end
  alias :biquadratefree? :quarticfree?
end
