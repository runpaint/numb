class Integer
  def carol?
    return true if self == 7
    return true if self == -1
    a, b = to_s(2).match(/^(1+)0(1+)$/).to_a[1..-1]
    return false if (a.nil? or b.nil?)
    b.length == (a.length + 3)
  end
end
