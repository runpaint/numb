# coding: utf-8
class Integer
  def self_descriptive?(base=10)
    dig = digits
    return false unless digits.size == base
    dig.each_with_index{|d,i| return false unless dig.count(i) == d}
    true
  end
end
