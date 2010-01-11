class Integer
  def smooth?(b)
    prime_factors.none?{|f| f > b}
  end
end
