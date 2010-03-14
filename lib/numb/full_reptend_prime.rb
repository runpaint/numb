class Integer
  def full_reptend_prime?
    return false unless prime? and (10**(self-1)).modulo(self) == 1
    (self - 2).downto(1).none? do |k|
      (10**k).modulo(self) == 1
    end
  end
end
