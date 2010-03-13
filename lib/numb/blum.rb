class Integer
  def blum?
    return false unless prime_factors.size == 2
    prime_factors.uniq.size == 2 and prime_factors.all?{|p| p.modulo(4) == 3}
  end
end
