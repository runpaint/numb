class Integer
  def proth?
    return false if self < 3
    n_max = Math.log2(self-1).ceil
    (1..(self / n_max)).select{|k| k.odd?}.any? do |k|
      (1..n_max).select{|n| 2**n > k}.any? do |n|
        break if (x = (k * (2**n)) + 1) > self 
        x == self
      end
    end
  end
end
