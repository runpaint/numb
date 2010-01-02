class Integer
  def pronic?
    return false unless even? and self >= 0
    (Math.sqrt(succ).round - Math.sqrt(self).round) == 1
  end
end
