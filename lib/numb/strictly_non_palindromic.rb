class String
  def palindrome?; self == reverse; end
end

class Integer
  def strictly_non_palindromic?
    return true if (0..4).include?(self) or self == 6
    prime? and (2..(Math.sqrt(self).floor)).none?{|base| base(base).palindrome?}
  end
end
