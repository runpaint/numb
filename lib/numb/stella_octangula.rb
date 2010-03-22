# coding: utf-8
class Integer
  def stella_octangula
    octahedral + 8 * (self - 1).tetrahedral
  end

  def stella_octangula?
    in_sequence?(seq: :stella_octangula)
  end
end
