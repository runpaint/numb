class Integer
  def squared_triangular?
    square? and sqrt.to_i.triangular?
  end
end
