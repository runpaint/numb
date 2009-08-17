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
    return false unless prime?
    !!to_s.match(/^[01825][018253]*$/)
  end
end