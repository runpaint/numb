class Integer
  def centered_hexagonal?
    n = self - 1
    n.divides?(6) and (n/6).triangular?
  end
end
