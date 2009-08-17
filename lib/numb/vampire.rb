# coding: utf-8
class Integer
  def vampire?
    return false unless !prime? and digits.size.even?
    digits.permutation.map do |perm|
      [:first,:last].map {|pos| perm.send(pos,(digits.size/2)).join.to_i }.sort
    end.uniq.any? do |fangs|
      fangs.reduce(:*) == self
    end
  end
end
