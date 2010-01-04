class Integer
  def octagonal?
    return true if zero?
    x = (Math.sqrt(48*self + 16) + 4)/12
    x.to_i == x
  end
end
