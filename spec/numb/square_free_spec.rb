# coding: utf-8

describe Integer, "#square_free?" do
  # http://www.research.att.com/~njas/sequences/A005117
  SQUARE_FREE = [1,2,3,5,6,7,10,11,13,14,15,17,19,21,22,23,26,29,
                 30,31,33,34,35,37,38,39,41,42,43,46,47,51,53,55,
                 57,58,59,61,62,65,66,67,69,70,71,73,74,77,78,79,
                 82,83,85,86,87,89,91,93,94,95,97,101,102,103,105,
                 106,107,109,110,111,113]
  it "returns true for square-free numbers" do
    SQUARE_FREE.each do |number|
      number.should be_square_free
    end
  end

  it "returns false for non-square-free numbers" do
    ((1..113).to_a - SQUARE_FREE).each do |number|
      number.should_not be_square_free
    end
  end
end
