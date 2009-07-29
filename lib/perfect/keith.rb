class Integer
  def keith?
    return false unless (n = self) > 9
    terms = n.to_s.split(//).map{|d| d.to_i}
    loop do
      return true if (n = terms.reduce(:+)) == self
      return false if n > self
      terms.shift
      terms << n
    end
    false
  end
end

