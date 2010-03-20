# coding: utf-8
class Integer
  def prime_power?(k=nil)
    self == 1 or (primaries.size == 1 and (not k or primaries.first.last == k))
  end
end
