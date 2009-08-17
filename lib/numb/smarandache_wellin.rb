# coding: utf-8
class Integer
  def smarandache_wellin?
    prime_str = ''
    Prime.each do |prime|
      prime_str << prime.to_s
      return true if prime_str == to_s
      return false if prime_str.length >= to_s.length
    end
  end
end
