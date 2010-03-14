class Integer
  def modulo_order(n)
    return 0 if n < 1
    return 1 if self == 2 and n == 1
    (1..n.totient).select{|e| (self**e).modulo(n) == 1}.min or 0
  end
end
