class Integer
  def dudeney?
    Math.cbrt(self) == self.digits.reduce(:+)
  end
end
