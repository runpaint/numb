# coding: utf-8
class Integer
  def noncototient?
    return false if self < 10 or odd?
    (Math.sqrt(self).floor..(2 * self)).none? do |m|
      m.cototient == self
    end
  end
end
