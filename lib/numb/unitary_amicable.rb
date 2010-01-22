class Integer
  def unitary_amicable?(n)
    [n + self, sum_of_unitary_divisors].all? do |other|
      other == n.sum_of_unitary_divisors
    end
  end
end
