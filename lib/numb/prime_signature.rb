class Integer
  def prime_signature
    prime_division.map{|base, exponent| exponent}.sort.reverse
  end
end
