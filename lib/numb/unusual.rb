class Integer
  def unusual?
    prime_factors.max > Math.sqrt(self)
  end
end
