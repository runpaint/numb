class Integer
  def integer?
    true
  end
end

class Float
  def integer?
    round(10) == to_i
  end
end
