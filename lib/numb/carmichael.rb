class Integer
  def carmichael?
    return false unless odd? and composite? and square_free?
    prime_factors.all? do |p|
      (self - 1).remainder(p - 1) == 0
    end
  end

  def carmichael
    case self
      when 1, 2 then 1
      when 4 then 2
      else
        if primaries.size == 1
          p, a = primaries.first
          return totient if p.odd?
          return totient/2 if p == 2 and a >= 3
        end
        primaries.map{|p| p.reduce(:**)}.map(&:carmichael).reduce(&:lcm)
    end
  end
end
