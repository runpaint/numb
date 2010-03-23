# coding: utf-8
class Integer
  def takeuchi
    n = self
    return n if n <= 1
    (0..n-2).map do |k|
      (
        (2 * (n + k - 1).choose(k)) - (n + k).choose(k)
      ) * (n - k - 1).takeuchi
    end.reduce(:+) + (1..n).map(&:catalan).reduce(:+)
  end

  memoize :takeuchi

  def takeuchi?
    in_sequence?(seq: :takeuchi)
  end
end
