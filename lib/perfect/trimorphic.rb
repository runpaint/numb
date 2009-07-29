class Integer
  def trimorphic?
    (self ** 3).to_s.end_with? self.to_s
  end
end
