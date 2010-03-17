class Integer
  def pronic?
    return false unless even? and (positive? or zero?)
    (Math.sqrt(succ).round - sqrt.round) == 1
  end

  alias :heteromecic? :pronic?
end
