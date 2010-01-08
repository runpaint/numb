class Integer
  def minimal?
    div_n = positive_divisors.size
    (self-1).downto(1).all? do |n|
      n.positive_divisors.size != div_n
    end
  end
end
