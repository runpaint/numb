# coding: utf-8
class Integer
  def betrothed?(m)
    σ == m.σ and σ == self.succ + m
  end
  alias :quasi_amicable? :betrothed?
  alias :reduced_amicable? :betrothed?
end
