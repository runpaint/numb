# coding: utf-8
describe Integer, "#cubic_residue?" do
  # A096107
  @seq = [
          [1],
          [1,2],
          [1,3],
          [1,2,3,4],
          [1,5],
          [1,6],
          [1,3,5,7],
          [1,8],
          [1,3,7,9],
          [1,2,3,4,5,6,7,8,9,10],
          [1,5,7,11],
          [1,5,8,12],
          [1,13],
          [1,2,4,7,8,11,13,14],
          [1,3,5,7,9,11,13,15],
          [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],
          [1,17],
          [1,7,8,11,12,18],
          [1,3,7,9,11,13,17,19],
          [1,8]
  ]

  @seq.to_enum.with_index(2).each do |values, p|
    (1...p).each do |n|
      if values.include?(n)
        it "returns true for cubic residue (mod #{p}) #{n}" do
          n.should be_cubic_residue(p)
        end
      elsif p != 21
        it "returns false for cubic non-residue (mod #{p}) #{n}" do
          n.should_not be_cubic_residue(p)
        end
      end
    end
  end
end
