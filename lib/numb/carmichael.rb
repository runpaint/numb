class Integer
  def carmichael?
    return false unless odd? and composite? and square_free?
    prime_factors.all? do |p|
      (self - 1).remainder(p - 1) == 0
    end
  end
end
