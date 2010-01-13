class Integer
  def primitive_pseudoperfect?
    pseudoperfect? and proper_divisors.sort.none?(&:pseudoperfect?)
  end
end
