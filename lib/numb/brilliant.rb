# coding: utf-8
class Integer
  def brilliant?
    pfacts = prime_factors
    pfacts.size == 2 and pfacts.map{|f| f.to_s.size}.uniq.size == 1
  end
end
