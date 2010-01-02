class Integer
  def lucas_carmichael?
    return false unless self > 1 and odd? and not prime? and square_free? 
    prime_factors.all? do |prime_factor|
      succ.factor?(prime_factor + 1)
    end
  end
end
