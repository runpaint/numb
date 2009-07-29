class Integer
  def self?
    # Formula from: Kaprekar, D. R. The Mathematics of New Self-Numbers
    #  Devaiali (1963): 19 - 20
    dr_star = digital_root.odd? ? (digital_root + 9) / 2 : digital_root / 2
    0.upto(digits.size).none? do |i|
      (self - dr_star - 9 * i) + (self - dr_star - 9 * i).sod == self
    end
  end
  alias :colombian? :self?
  alias :devlai? :self?
end
