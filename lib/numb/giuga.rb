class Integer
  def giuga?
    composite? and prime_factors.uniq.all? do |p|
      ((self / p) - 1).divides?(p)
    end
  end
end
