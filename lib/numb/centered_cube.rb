class Integer
  def centered_cube?
    1.upto(Math.cbrt(self)).any? do |n|
      self == n**3 + (n - 1) ** 3
    end
  end
end
