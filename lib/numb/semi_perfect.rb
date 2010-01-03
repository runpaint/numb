# coding: utf-8
class Integer
   def semi_perfect?
     return false if deficient?
     return true if perfect?
     possibles, divisors = { 0 => true}, proper_positive_divisors
     proper_sod = (sod = sum_of_divisors || 0) - self
     divisors.reverse.each do |divisor|
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
  alias :pseudoperfect? :semi_perfect?
end
