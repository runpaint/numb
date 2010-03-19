# coding: utf-8
class Integer
  def infinitary_divisors
    pf = Hash[prime_factors.uniq.map{|f| [f, 0]}]
    bin = divisors.map do |d|
      prime_divisors = pf.map(&:first)
      [d, pf.merge(Hash[d.primaries]).
        values.
        map{|v| sprintf("%.#{to_s(2).size}b", v)}.join]
    end
    bin = Hash[bin]
    target = bin[self].chars.map.with_index.to_a.select{|a,b| a == '0'}.map(&:last)
    bin.select{|d,b| target.all?{|i| b[i] == '0'}}.keys.sort
  end
end
