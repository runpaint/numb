class Integer
  def jacobsthal_lucas?
    [self + 1, self - 1].any? do |n|
      exp = Math.log2(n)
      if exp == exp.to_i
        self == 2**exp + (-1)**exp
      end
    end
  end
end
