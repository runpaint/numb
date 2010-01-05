class Integer
  def cube?
    y = self < 0 ? (-self) : self
    x = Math.cbrt(y)
    # The hack below is seemingly needed for 1.8 compatibility
    x.ceil.to_f.to_s == x.to_s
  end
end
