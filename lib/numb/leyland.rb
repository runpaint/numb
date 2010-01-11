class Integer
  def leyland?
    (2..Math.sqrt(self)).each do |x|
      (x..Math.sqrt(self)).each do |y|
        sum = x**y + y**x
        return true if sum == self
        break if sum > self
      end
    end
    false
  end
end

