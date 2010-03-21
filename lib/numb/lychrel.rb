class Integer
  def lychrel?
    n = self
    # This limit is as arbitrary as it looks
    100.times do
      return false if n.palindrome?
      n += n.reverse
    end
    true
  end
end
