# coding: utf-8
describe Integer, "#multiamicable?" do
  @seq = [
    [1, 6, 76455288, 183102192],
    [1, 7, 52920, 152280],
    [1, 7, 16225560, 40580280],
    [1, 7, 90863136, 227249568],
    [1, 7, 16225560, 40580280],
    [1, 7, 70821324288, 177124806144],
    [1, 7, 199615613902848, 499240550375424],
  ].first(5)

  @seq.each do |a, b, m, n|
    it "returns true for multi-amicable numbers #{n} and #{m} (α = #{a}, β = #{b})" do
      n.should be_multiamicable(m, a, b)
    end
  end

  @seq.each do |a, b, m, n|
    a += 3
    n -= 100
    it "returns false for non-multi-amicable numbers #{n} and #{m} (α = #{a}, β = #{b})" do
      n.should_not be_multiamicable(m, a, b)
    end
  end
end
