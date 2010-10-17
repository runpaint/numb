class Integer
  # Returns the integer `n`'th root of the absolute value of `self`.
  #
  #     (0..12).map{|n| (4**n).inrt(3)}
  #     #=> [1, 1, 2, 4, 6, 10, 16, 25, 40, 64, 101, 161, 256]
  #
  # @param [Integer] n root to take of `self`
  # @return [Integer] The `n`th root of `self`
  def inrt n
    (abs ** Rational(1, n)).round(5).floor
  end
end
