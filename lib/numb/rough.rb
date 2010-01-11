class Integer
  def rough?(k)
    prime_factors.all?{|f| f >= k}
  end
end
