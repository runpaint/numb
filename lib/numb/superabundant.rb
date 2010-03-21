# coding: utf-8
class Integer
  def superabundant?
    return true if self == 1
    # Constraints due to "Abundant Numbers and the Riemann Hypothesis",
    # Briggs, 2006, Experimental Mathematics, vol. 15, no. 2
    ex = primaries.map(&:last)
    return false unless [ex.last, ex.first] == ex.minmax
    primaries[1..-1].all? do |b, e|
      (e - (ex[0] * Math.log(b, primaries[0][0])).floor <= 1) and e < 2**(ex[0] + 2)
    end or return false
    return false unless [4, 36].include?(self) or ex.last == 1
    1.upto(self - 1).all? do |m|
      m.abundancy < abundancy
    end
  end
  memoize :superabundant?
end
