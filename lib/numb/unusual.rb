class Integer
  def unusual?
    prime_factors.max > sqrt
  end
end
