class Integer
  def unitary_divisor?(x)
    x.coprime?(self/x)
  end
end
