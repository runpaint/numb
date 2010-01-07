class Integer
  def k_perfect?(k)
    sum_of_divisors == k * self
  end

  alias :multiply_perfect? :k_perfect?
end
