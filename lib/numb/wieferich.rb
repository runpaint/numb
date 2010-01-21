class Integer
  def wieferich_prime?
    return false unless prime?
    (2**(self - 1)).modulo(self ** 2) == 1
  end
end
