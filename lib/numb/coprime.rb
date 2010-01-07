class Integer
  def coprime?(x)
    self != x && gcd(x) == 1
  end
end

