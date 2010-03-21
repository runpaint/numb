class Integer
  def strictly_non_palindromic?
    return true if (0..4).include?(self) or self == 6
    prime? and (2..isqrt).none?{|base| palindrome?(base)}
  end
end
