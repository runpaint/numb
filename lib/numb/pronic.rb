class Integer
  def pronic?
    return false unless even? and (positive? or zero?)
    (Math.sqrt(succ).round - Math.sqrt(self).round) == 1
  end
end
