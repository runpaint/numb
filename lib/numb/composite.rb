class Integer
  def composite?
    self > 1 and not prime?
  end
end
