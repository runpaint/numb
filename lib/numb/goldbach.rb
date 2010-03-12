class Integer
  def goldbach?
    return false unless even? and self > 2
    downto(2).any?{|n| n.prime? and (self - n).prime?}
  end
end
