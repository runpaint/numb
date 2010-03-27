# coding: utf-8
describe Integer, "#quadratic_residue?" do
  #A046071
  @seq = [
      [1],
      [1],
      [1],
      [1,4],
      [1,3,4],
      [1,2,4],
      [1,4],
      [1,4,7],
      [1,4,5,6,9],
      [1,3,4,5,9],
      [1,4,9],
      [1,3,4,9,10,12],
      [1,2,4,7,8,9,11],
      [1,4,6,9,10],
      [1,4,9],
      [1,2,4,8,9,13,15,16],
      [1,4,7,9,10,13,16],
      [1,4,5,6,7,9,11,16,17],
      [1,4,5,9,16],
      [1,4,7,9,15,16,18],
      [1,3,4,5,9,11,12]
  ]

  @seq.to_enum.with_index(2).each do |values, p|
    (1...p).each do |n|
      if values.include?(n)
        it "returns true for quadratic residue (mod #{p}) #{n}" do
          n.should be_quadratic_residue(p)
        end
      elsif p != 22
        it "returns false for quadratic non-residue (mod #{p}) #{n}" do
          n.should_not be_quadratic_residue(p)
        end
      end
    end
  end
end
