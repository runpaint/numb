class Integer
  def fermat_pseudoprime?(a=10)
    return false unless composite?
    q = self
    raise ArgumentError unless a >= 2
    raise ArgumentError unless (q - 2) >= a
    (a**(q-1)).modulo(q) == 1
  end
end
