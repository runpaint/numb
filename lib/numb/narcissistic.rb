# coding: utf-8
class Integer
  def narcissistic?
    self == digits.map{|d| d ** digits.size}.reduce(:+)
  end
  alias :armstrong? :narcissistic?
  alias :plus_perfect? :narcissistic?
end
