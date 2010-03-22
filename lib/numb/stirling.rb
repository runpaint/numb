# coding: utf-8
class Integer
  def stirling(m)
    n = self
    return 1 if (n.zero? and m.zero?) or m == n 
    return 0 if m > n or m.zero? or n.zero?
    (n-1).stirling(m-1) - (n-1)*(n-1).stirling(m)
  end
end
