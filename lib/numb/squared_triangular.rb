class Integer
  def squared_triangular?
    square? and Math.sqrt(self).to_i.triangular?
  end
end
