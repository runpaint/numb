class Integer
  def goldbach?
    return false unless even? and self > 2
    #downto(2).any?{|n| n.prime? and (self - n).prime?}
    Prime.each do |prime|
      next if prime == 2
      return true if (self - prime).prime?
      return false if prime >= self
    end
  end
end
