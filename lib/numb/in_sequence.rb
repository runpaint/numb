# coding: utf-8
class Integer 
  def in_sequence?(args)
    args = {range: (1..self), cond: :<, initial: []}.merge(args)
    return true if Array(args[:initial]).include?(self)
    args[:range].each do |n|
      warn "n=#{n}"
      next if (term = n.send(args[:seq])).send(args[:cond], self)
      warn "term=#{term}"
      return term == self ? true : false
    end
  end
end
