class Integer
  def inv_mod m
    g, x, y = xgcd(m) 
    x % m if g == 1
  end
end
