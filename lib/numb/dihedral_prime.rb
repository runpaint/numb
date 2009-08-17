# coding: utf-8
class Integer
  def dihedral_prime?
    return false unless prime?
    !!to_s.match(/^[01825][018253]*$/)
  end
end
