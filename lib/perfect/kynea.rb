class Integer
  def kynea?
    return true if self == 7
    a, b = to_s(2).match(/^(10+)(1+)$/).to_a[1..-1]
    return false if (a.nil? or b.nil?)
    a.length == (b.length - 1)
  end
end
