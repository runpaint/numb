# coding: utf-8
class Integer
  def square?
    return false unless zero? or (positive? and to_s(16)[-1] =~ /[0149]/)
    (sq = sqrt).finite? ? sq.integer? : nil
  end
end
