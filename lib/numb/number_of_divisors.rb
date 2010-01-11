# coding: utf-8
class Integer
  # Algorithm derived from Formulas for pi(n) and the n-th prime by Sebastian
  # Martin Ruiz and Jonathan Sondow [arXiv:math/0210312v2 [math.NT]]

  # Returns the number of divisors of self
  def τ 
    n = self
    return @nod if defined?(@nod)
    square_root = Math.sqrt(n)
    @nod = (1..square_root.floor).
      map {|i|  n.quo(i).to_i - (n - 1).quo(i).to_i }.
      reduce(:+) * 2
    @nod -= 1 if square_root.integer?
    @nod
  end


  alias :number_of_divisors :τ 
  alias :d :τ 
end
