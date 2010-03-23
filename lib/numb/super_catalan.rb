# coding: utf-8
class Integer
  def super_catalan
    n = self
    return 1 if n <= 2
    Rational(
      3 * ((2 * n) - 3) * (n - 1).super_catalan - (n - 3) * (n - 2).super_catalan,
      n
    ).to_i
  end

  memoize :super_catalan

  def super_catalan?
    in_sequence?(seq: :super_catalan)
  end
end
