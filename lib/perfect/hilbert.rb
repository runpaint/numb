class Integer
  def hilbert?
    return false unless self > 0
    ((self - 1) % 4) == 0
  end
end
