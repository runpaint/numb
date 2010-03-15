describe Integer, "#delannoy" do
  #  A008288 / http://mathworld.wolfram.com/DelannoyNumber.html
  @seq = [
    [1,  1,  1,  1,    1,    1,    1,    1,     1],
    [1,  3,  5,  7,    9,   11,   13,   15,    17],
    [1,  5, 13, 25,   41,   61,   85,  113,   145],
    [1,  7, 25, 63,  129,  231,  377,  575,   833],
    [1,  9, 41, 129, 321,  681, 1289, 2241,  3649],
    [1, 11, 61, 231, 681, 1683, 3653, 7183, 13073],
  ]

  @seq.each_with_index do |row, a|
    row.each_with_index do |d, b|
      it "returns #{d} for Delannoy(#{a}, #{b})" do
        a.delannoy(b).should == d
      end
    end
  end
end

describe Integer, "#delannoy?" do
  #  A008288
  @seq = [1,1,1,1,3,1,1,5,5,1,1,7,13,7,1,1,9,25,25,9,1,1,
          11,41,63,41,11,1,1,13,61,129,129,61,13,1,1,15,85,
          231,321,231,85,15,1,1,17,113,377,681,681,377,113,
          17,1,1,19,145,575,1289,1683,1289,575,145,19,1,1,
          21,181,833,2241,3653,3653].uniq

  @seq.each do |n|
    it "returns true for Delannoy number #{n}" do
      n.should be_delannoy
    end
  end

  [2, 10, 50, 26, 80].each do |n|
    it "returns false for non-Delannoy number #{n}" do
      n.should_not be_delannoy
    end
  end
end
