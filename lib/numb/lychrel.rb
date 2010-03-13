class Integer
  def palindrome?
    to_s.reverse.to_i == self
  end

  def lychrel?
    n = self
    # This limit is as arbitrary as it looks
    100.times do
      return false if n.palindrome?
      n += n.to_s.reverse.to_i
    end
    true
  end
end
