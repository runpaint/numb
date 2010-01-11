class Integer
  def interprime?
    return false if prime?
    self == (next_prime + prev_prime)/2
  end
end
