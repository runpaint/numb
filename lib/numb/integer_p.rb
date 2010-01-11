class Integer
  def integer?
    true
  end
end

class Float
  def integer?
    self == to_i
  end
end
