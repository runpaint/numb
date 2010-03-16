class Integer
  def e_divisors
    return [1] if self == 1
    pfacts = primaries
    comb = pfacts.map{|p,a| (1..a).select{|b| a.divides?(b)}.map{|b| p**b}}
    comb.flatten.permutation(pfacts.size).select do |perm|
      perm.each_with_index.all?{|x,i| comb[i].include? x}
    end.map{|perm| perm.reduce(:*)}
  end
end
