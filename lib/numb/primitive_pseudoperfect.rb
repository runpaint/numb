class Integer
  def primitive_pseudoperfect?
    pseudoperfect? and proper_positive_divisors.sort.none?(&:pseudoperfect?)
  end
end
