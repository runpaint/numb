# coding: utf-8
class Integer
  def square?
    return false unless zero? or (positive? and to_s(16)[-1] =~ /[0149]/)
    (sq = sqrt).finite? ? sq.integer? : nil
  end

  def square_triangular?
    square? and triangular?
  end

  def squared_triangular?
    square? and sqrt.to_i.triangular?
  end

  def square_free?
     not μ.zero?
  end

  def centered_n_gonal?(n)
    raise ArgumentError unless n > 2
    Rational(
      -n + Math.sqrt( n**2 - 8 * (n - n * self) ), 
                  2 * n
    ).denominator == 1
  end

  def centered_cube?
    1.upto(Math.cbrt(self)).any? do |n|
      self == n**3 + (n - 1) ** 3
    end
  end

  def centered_hexagonal?
    n = self - 1
    n.divides?(6) and (n/6).triangular?
  end

  def centered_pentagonal?
    n = self - 1
    n.divides?(5) and (n/5).triangular?
  end

  def centered_square?
    centered_n_gonal? 4
  end

  def centered_triangular?
    centered_n_gonal?(3)
  end

  def cube?
    Math.cbrt(self).integer?
  end

  def decagonal?
    n_gonal?(10)
  end

  def n_gonal?(n)
    raise ArgumentError unless n.is_a?(Integer) and n >= 3
    return true if zero?
    ((Math.sqrt((8*n - 16)*self + (n-4)**2) + n - 4) / (2*n - 4)).integer?
  end

  def dodecagonal?
    n_gonal?(12)
  end

  def heptagonal?
    n_gonal?(7)
  end

  def hexagonal?
    return true if zero?
    ((Math.sqrt((8*self) + 1) + 1)/4).integer?
  end

  def myriagonal?
    n_gonal?(10_000)
  end

  def near_square?(k)
    (self - k).square?
  end

  def octagonal?
    n_gonal?(8)
  end

  def pyramidal(r)
    n = self
    (6.reciprocal * n * n.succ * (((r - 2) * n) + (5 - r))).to_i
  end

  def octahedral
    (Rational(self, 3) * (2 * self**2 + 1)).to_i
  end

  def octahedral?
    in_sequence?(seq: :octahedral)
  end

  def triangular?
    n_gonal?(3)
  end

  def pentagonal?
    n_gonal?(5)
  end

  def pentatope
    (Rational(tetrahedral, 4) * (self + 3)).to_i
  end

  def star
    6 * self * (self - 1) + 1
  end

  def star?
    return true if self == 1
    return false unless [1, 4].include?(digital_root) and 
      to_s.end_with?(*%w{01 13 21 33 37 41 53 61 73 81 93})
    centered_n_gonal?(12)
  end

  def tetrahedral
    pyramidal(3)
  end

  def stella_octangula
    octahedral + 8 * (self - 1).tetrahedral
  end

  def stella_octangula?
    in_sequence?(seq: :stella_octangula)
  end
end
