class Integer
  def superperfect?
    sum_of_divisors.sum_of_divisors == 2 * self
  end
end
