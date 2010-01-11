# coding: utf-8
class Integer
  # Algorithm derived from Formulas for pi(n) and the n-th prime by Sebastian
  # Martin Ruiz and Jonathan Sondow [arXiv:math/0210312v2 [math.NT]]

  # Returns the number of divisors of self
  def τ 
    n = self
    @nod ||= (1..Math.sqrt(n)).
      map {|i| n.quo(i).to_i - (n - 1).quo(i).to_i }.
      reduce(:+) * 2
  end


  alias :number_of_divisors :τ 
  alias :d :τ 
end
