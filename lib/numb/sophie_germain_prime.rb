class Integer
  def sophie_germain_prime?
    prime? and ((2*self) + 1).prime?
  end
end
