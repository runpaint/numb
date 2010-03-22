# coding: utf-8
class Integer 
  def in_sequence?(m, initial=[], cond = :<)
    return true if initial.include?(self)
    (1..self).each do |n|
      next if (term = n.send(m)).send(cond, self)
      return term == self ? true : false
    end
  end
end
