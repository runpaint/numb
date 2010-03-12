class Integer
  def safe_prime?
    prime? and odd? and ((self - 1) / 2).prime?
  end
end
