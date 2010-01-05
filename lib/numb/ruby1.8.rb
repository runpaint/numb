module Math
  def self.cbrt(x)
    (x.to_f**(1.0/3.0))
  end unless Math.methods.any?{|m| m.to_s == 'cbrt'}

  def self.log2(x)
    Math.log(x) / Math.log(2)
  end unless Math.methods.any?{|m| m.to_s == 'log2'}
end
