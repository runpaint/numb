# coding: utf-8
module Memoize
  def memoize(sym)
    aka = "_#{sym}".to_sym
    alias_method aka, sym
    @@NUMB ||= {}
    Integer.send(:define_method, sym) do |*args|
      @@NUMB[[self, sym, args]] ||= send(aka, *args)
    end
  end
end

[Integer, Bignum].each do |klass|
  class << klass
    include Memoize
  end
end
  
class Integer
  def sqrt
    Math.sqrt(self)
  end

  def isqrt
    sqrt.floor
  end

  def digital_root
    self == 0 ? 0 : 1 + ((self - 1) % 9)
  end

  def digital_sum
    digits.reduce(:+)
  end
  alias :sum_of_digits :digital_sum
  alias :sod :digital_sum

  def digits
    self.to_s.split(//).map{|d| d.to_i}
  end
end


Dir.glob(File.dirname(__FILE__) + '/numb/**/*.rb').each {|file| require file}
