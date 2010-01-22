class Integer
  def twin_prime?(p)
    [p, self].all?(&:prime?) and p == self + 2
  end
end
