# coding: utf-8
class Integer
  def stirling2(m)
    n = self
    return 1 if (n.zero? and m.zero?) or m == n 
    return 0 if m > n or m.zero? or n.zero?
    (n-1).stirling2(m-1) + m * (n-1).stirling2(m)
  end
end
