class Integer
  def minimal?
    div_n = number_of_divisors
    (self-1).downto(1).all? do |n|
      n.number_of_divisors != div_n
    end
  end
end
