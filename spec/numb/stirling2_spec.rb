# coding: utf-8
describe Integer, "#stirling2" do
  @seq = [
          [1],
          [1,   1],
          [1,   3,    1],
          [1,   7,    6,    1],
          [1,  15,   25,   10,     1],
          [1,  31,   90,   65,     15,     1],
          [1,  63,  301,  350,    140,    21,    1],
          [1, 127,  966, 1701,   1050,   266,   28,   1],
          [1, 255, 3025, 7770,   6951,  2646,  462,  36,  1],
          [1, 511, 9330, 34105, 42525, 22827, 5880, 750, 45, 1]
  ]

  @seq.to_enum.with_index(1).each do |row, n|
    row.to_enum.with_index(1).each do |s, m|
      it "returns #{s} as the #{n}#{n.ordinal} Stirling number of the 2nd kind (m = #{m})" do
        n.stirling2(m).should == s
      end
    end
  end
end
