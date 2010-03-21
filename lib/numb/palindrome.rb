# coding: utf-8
class Integer
  def palindrome?(base=10)
    base(base) == base(base).reverse
  end

  alias :palindromic? :palindrome?
end
