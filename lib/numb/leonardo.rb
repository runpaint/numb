class Integer
  def leonardo?
    n = self
    return 1 if n <= 1
    phi = Hash[[:+, :-].map{|sign| [sign, (1.send(sign, Math.sqrt(5)) / 2) ]}]
    divisor = phi[:+] - phi[:-]
    (1..n).any? do |m|
      sum = ((2 * ( ( phi[:+]**(m+1) - phi[:-]**(m+1) ).fdiv( divisor ) )) - 1)
      return false unless sum.finite?
      sum.floor == self
    end
  end
end
