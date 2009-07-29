class Integer
  def automorphic?(n=1)
    (n * self ** 2).to_s.end_with? self.to_s
  end
  alias :curious? :automorphic?
end
