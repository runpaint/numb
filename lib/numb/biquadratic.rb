class Integer
  def biquadratic?
    (self ** (1.0/4.0)).integer?
  end
end
