class Integer
  def woodall?
    x = succ
    divisors = x.square? ? x.divisors[0..-2] : x.divisors
    divisors.each_slice(2).any?{|a, b| a == Math.log2(b)}
  end
end
