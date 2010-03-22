class Integer
  def bell?
    in_sequence?(:bell)
  end

  def bell
    n = self
    return 1 if zero?
    (0..(n-1)).map{|k| k.bell * (n-1).choose(k)}.reduce(:+)
  end

  memoize :bell
end
