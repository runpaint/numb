class Integer
  def primitive_root?(g=nil)
    if g
      return true if g.zero? and self == 1
      coprime?(g) and g.modulo_order(self) == totient
    else
      return true if [1, 2, 4].include?(self)
      prime_factors.select(&:odd?).any? do |p|
        [1,2].any? do |x|
          Math.log(self / x, p).integer?
        end
      end
    end
  end
end
