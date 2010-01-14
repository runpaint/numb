class Integer
  def centered_triangular?
    ((9 + Math.sqrt((24 * self) - 15)).fdiv(6) - 1).integer?
  end
end
