# coding: utf-8
class Integer
  def motzkin
    n = self
    return 1 if n <= 1
    ((3 * (n - 1) * (n - 2).motzkin) + (2 * n).succ * (n - 1).motzkin) / (n + 2)
  end

  def motzkin?
    (1..self).each do |n|
      m = n.motzkin
      next if m < self
      return m == self ? true : false
    end
  end
end
