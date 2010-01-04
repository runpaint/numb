class Integer
  def cube?
    x = Math.cbrt(self)
    x.to_i == x
  end
end
