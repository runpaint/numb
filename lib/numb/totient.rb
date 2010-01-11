# coding: utf-8
class Integer
  def φ
    return 1 if self == 1
    return self - 1 if prime?
    (1..self).select{|n| n.coprime?(self)}.size
  end

  alias :totient :φ
end
