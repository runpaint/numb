# coding: utf-8
class Integer
  def nexus(d)
    (self + 1)**d.succ - self**d.succ
  end
end

