class Integer
  def amenable?
    self != 4 and modulo(4) < 2
  end
end
