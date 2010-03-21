# coding: utf-8
class Integer
  def vampire?
    return false unless composite? and digits.size.even?
    seen = {}
    digits.permutation.any? do |perm|
      fangs = [:first,:last].map {|pos| perm.send(pos,(digits.size/2)).join.to_i }.sort
      next if seen.key?(fangs)
      seen[fangs] = fangs.reduce(:*) == self
    end
  end
end
