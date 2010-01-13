class Integer
  def unitary_perfect?
    proper_divisors.select do |divisor|
      unitary_divisor?(divisor)
    end.reduce(:+) == self
  end
end
