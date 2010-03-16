# coding: utf-8
class Integer
  def e_perfect?
    return false if odd?
    σe == 2 * self
  end
end
