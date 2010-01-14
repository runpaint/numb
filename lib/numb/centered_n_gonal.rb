class Integer
  def centered_n_gonal?(n)
    raise ArgumentError unless n > 2
    Rational(
      -n + Math.sqrt( n**2 - 8 * (n - n * self) ), 
                  2 * n
    ).denominator == 1
  end
end
