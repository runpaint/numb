class Integer
  def lucas_carmichael?
    return false unless composite? and odd? and square_free? 
    prime_factors.all? do |prime_factor|
      succ.factor?(prime_factor + 1)
    end
  end
end
