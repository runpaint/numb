class Integer
  def delannoy?
    return true if self == 1
    max_a, max_b = self/2, self/2
    (1..max_a).each do |a|
      (1..max_b).each do |b|
        d = a.delannoy(b)
        return true if d == self
        if d > self
          max_b = b 
          max_a = a
          break
        end
      end
      break if a > max_a
    end
    false
  end

  def delannoy(b)
    a = self
    return 1 if b.zero? or a.zero?
    [(a - 1).delannoy(b), a.delannoy(b - 1), (a - 1).delannoy(b - 1)].reduce(:+)
  end
end
