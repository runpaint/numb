class Integer
  def undulating?
    dig = digits
    return false unless digits.size >= 3 and digits[0] != digits[1]
    dig.each_with_index do |d,i| 
      return false unless i.odd? ? d == dig[1] : d == dig[0]
    end
    true
  end
end
