# coding: utf-8
class Integer
  def mms_pair?(other)
    return false unless consecutive?(other)
    sum = [self,other].map do |n|
      (n.digits + n.prime_factors.map{|p| p.digits}.flatten).reduce(:+)
    end
    sum.first == sum.last
  end
  alias :maris_mcgwire_sosa_pair? :mms_pair?
end
