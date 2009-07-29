class Integer
  def emrip?
    return false unless prime?
    reversed = to_s.reverse.to_i
    reversed != self and reversed.prime?
  end
end
