# coding: utf-8
describe Integer, "#choose" do
  # A007318
  @seq = [
    [1],
    [1,  1],
    [1,  2,  1],
    [1,  3,  3,   1],
    [1,  4,  6,   4,   1],
    [1,  5, 10,  10,   5,   1],
    [1,  6, 15,  20,  15,   6,   1],
    [1,  7, 21,  35,  35,  21,   7,   1],
    [1,  8, 28,  56,  70,  56,  28,   8,   1],
    [1,  9, 36,  84, 126, 126,  84,  36,   9,  1],
    [1, 10, 45, 120, 210, 252, 210, 120,  45, 10,  1],
    [1, 11, 55, 165, 330, 462, 462, 330, 165, 55, 11, 1]
  ]

  @seq.each_with_index do |row, n|
    row.each_with_index do |coeff, k|
      it "returns #{coeff} for Binomial(#{n}, #{k})" do
        n.choose(k).should == coeff
      end
    end
  end
end