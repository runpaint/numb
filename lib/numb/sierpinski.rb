class Integer
  def sierpinski?
    return false unless odd?
    1.upto(self).all? do |n|
      (self * (2**n) + 1).composite?
    end
  end
end
