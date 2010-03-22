# coding: utf-8
class Integer
  def star
    6 * self * (self - 1) + 1
  end

  def star?
    return true if self == 1
    return false unless [1, 4].include?(digital_root) and 
      to_s.end_with?(*%w{01 13 21 33 37 41 53 61 73 81 93})
    centered_n_gonal?(12)
  end
end
