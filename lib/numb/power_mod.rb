class Integer
  # `self`^`b` mod `m`
  #
  # @param [Integer] b power to which `self` should be raised
  # @param [Integer] m modulus
  # @return [Integer] `self`^`b` % `m`
  def power_mod(b, m)
    result = 1
    b.to_s(2).chars.each do |bit|
      result = (result * result) % m
      result = (result * self) % m if bit==?1
    end
    result
  end  
end
