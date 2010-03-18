class Integer
  def sophie_germain_prime?
    prime? and (2*self).succ.prime?
  end
end
