# coding: utf-8
class Integer
  def quadratic_residue?(p)
    residue? p, 2
  end

  def cubic_residue?(p)
    coprime?(p) and residue? p, 3
  end

  private
  def residue?(p, e=1)
    (1...p).any?{|x| (x**e).modulo(p) == self}
  end
end
