class Integer
  def n_gonal?(n)
    raise ArgumentError unless n.is_a?(Integer) and n >= 3
    return true if zero?
    ((Math.sqrt((8*n - 16)*self + (n-4)**2) + n - 4) / (2*n - 4)).integer?
  end
end
