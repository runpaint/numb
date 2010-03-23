# coding: utf-8
class Integer
  def k_perfect?(k)
    σ == k * self
  end

  alias :multiply_perfect? :k_perfect?

  def perfect?
    return false if self < 6 or self.odd? or self.to_s !~ /(6|8)$/
    return false if self != 6 and digital_root != 1  
    k_perfect?(2)
  end

 def semiperfect?
   return false if deficient?
   return true if perfect?
   possibles = { 0 => true}
   proper_sod = (sod = σ || 0) - self
   proper_divisors.reverse.each do |divisor|
     possibles.keys.each do |possible|
       possibles.delete(possible) if possible + sod < self 
       x = possible + divisor
       return true if x == self or x == proper_sod 
       possibles[x] = true if x < self        
     end
     sod -= divisor
   end
   false
  end
  
 alias :pseudoperfect? :semiperfect?
 
  def almost_perfect?
    return true if self == 1
    proper_divisors.reduce(:+) == self - 1
  end

  alias :least_deficient? :almost_perfect?
  alias :slightly_defective? :almost_perfect?

  def e_perfect?
    return false if odd?
    σe == 2 * self
  end

  def unitary_perfect?
    proper_divisors.select do |divisor|
      unitary_divisor?(divisor)
    end.reduce(:+) == self
  end

  def hyperperfect?(k=1)
    raise ArgumentError unless k >= 1
    (1 + (k * (σ - self - 1))) == self
  end

  def superperfect?
    σ.σ == 2 * self
  end

  def sublime?
    number_of_divisors.perfect? and σ.perfect?
  end

  def primitive_pseudoperfect?
    pseudoperfect? and proper_divisors.sort.none?(&:pseudoperfect?)
  end

  def infinitary_perfect?
    σ∞ == 2*self
  end
end
