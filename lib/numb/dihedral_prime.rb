# coding: utf-8
class Integer

  # A dihedral prime is a prime number that appears as itself or another prime
  # when rendered on a seven-segment display of a calculator and... 
  #
  # * Rotated 180°.  
  # * Mirrored.  
  # * Rotated 180° and mirrored.
  #
  # For example, 120121 is a dihedral prime. It is 121021 when rotated,
  # 151051 (another prime) when mirrored, and 150151 when rotated and
  # mirrored.
  #
  # Returns true if self is a dihedral prime; false otherwise.
  #
  #     101.dihedral_prime?  #=> true
  #     181.dihedral_prime?  #=> true
  #     7.dihedral_prime?    #=> false
  #
  def dihedral_prime?
    return false unless prime? and to_s.match(/^[01825]+$/)
    mirror = ->(n){ n.to_s.gsub(/([25])/){|orig| orig == '2' ? '5' : '2'}.to_i }
    [upside_down, mirror[self], mirror[upside_down]].all?(&:prime?)
  end

  private
  def upside_down
    to_s.reverse.to_i
  end
end
