# coding: utf-8
class Integer
  def octahedral
    (Rational(self, 3) * (2 * self**2 + 1)).to_i
  end

  def octahedral?
    in_sequence?(seq: :octahedral)
  end
end
