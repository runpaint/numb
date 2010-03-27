# coding: utf-8
class Integer
  def quadratic_residue?(p)
    (0..p/2).any?{|x| (x**2).modulo(p) == self}
  end
end
