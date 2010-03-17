# coding: utf-8
class Integer
  def n_step_fibonacci(n)
    return 0 if self <= (n - 2) 
    return 1 if self <= (n - 1)
    (1..n).map{|i| (self-i).n_step_fibonacci(n) }.reduce(:+)
  end
end
