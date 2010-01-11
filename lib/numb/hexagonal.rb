class Integer
  def hexagonal?
    return true if zero?
    ((Math.sqrt((8*self) + 1) + 1)/4).integer?
  end
end
