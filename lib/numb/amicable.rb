class Integer
  def amicable?(other)
    n, m = [self, other].minmax
    m.multiamicable?(n, 1, 1)
  end
end
