class Integer
  def cube?
    Math.cbrt(self).integer?
  end
end
