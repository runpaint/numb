class Integer
  def centered_pentagonal?
    n = self - 1
    n.divides?(5) and (n/5).triangular?
  end
end
