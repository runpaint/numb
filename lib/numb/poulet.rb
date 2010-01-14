class Integer
  def poulet?
    composite? and (2**self - 2).divides?(self)
  end
end
