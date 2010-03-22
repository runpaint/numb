# coding: utf-8
class Integer
  def schröder
    return 1 if zero?
    n = self
    (n-1).schröder + (0...n).map do |k| 
      k.schröder * (n - 1 - k).schröder
    end.reduce(:+)
  end
  
  memoize :schröder

  alias :schroder :schröder

  def schröder?
    in_sequence?(seq: :schröder, initial: 1)
  end

  alias :schroder? :schröder?
end
