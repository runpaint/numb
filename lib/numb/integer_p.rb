class Integer
  def integer?
    true
  end
end

class Float
  def integer?
    !!(sprintf("%f", self) =~ /\.0+$/)
  end
end
