class Integer
  def sum_of_unitary_divisors
    divisors.select{|d| unitary_divisor?(d)}.reduce(:+) or 0
  end
end
