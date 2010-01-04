class Integer
  def rhonda?(base=10)
    d = base == 10 ? digits : to_s(base).split(//).map{|_| _.to_i(base)} 
    d.reduce(:*) == base * (prime_factors.reduce(:+) || 0)
  end
end
