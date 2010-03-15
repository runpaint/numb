class Integer
  def leyland?
    (2..sqrt).each do |x|
      (x..sqrt).each do |y|
        sum = x**y + y**x
        return true if sum == self
        break if sum > self
      end
    end
    false
  end
end

