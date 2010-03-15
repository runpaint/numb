class Integer
  def subfactorial
    zero? ? 1 : self * (self - 1).subfactorial + (-1)**self
  end

  alias :derangements :subfactorial
end
