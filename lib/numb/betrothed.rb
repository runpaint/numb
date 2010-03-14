# coding: utf-8
class Integer
  def betrothed?(m)
    σ == m.σ and consecutive?(σ - m)
  end
  alias :quasi_amicable? :betrothed?
  alias :reduced_amicable? :betrothed?
end
