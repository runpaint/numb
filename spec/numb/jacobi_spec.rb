# -*- coding: utf-8 -*-
describe Integer, "#jacobi" do

  @seq = {
    # A165591
    59701 => [0,1,-1,1,1,1,-1,-1,-1,1,-1,1,1,-1,1,1,1,-1,-1,-1,
              1,-1,-1,1,-1,1,1,1,-1,-1,-1,-1,-1,1,1,-1,1,-1,1,
              -1,-1,1,1,1,1,1,-1,-1,1,1,-1,-1,-1,-1,-1,1,1,-1,1,
              -1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1,-1,-1,1,1,-1,-1,
              1,-1,1],
    # A165596
    59881 => [0,1,1,1,1,1,1,-1,1,1,1,-1,1,1,-1,1,1,-1,1,-1,1,
              -1,-1,1,1,1,1,1,-1,1,1,1,1,-1,-1,-1,1,-1,-1,1,1,1,
              -1,1,-1,1,1,1,1,1,1,-1,1,1,1,-1,-1,-1,1,-1,1,-1,1,
              -1,1,1,-1,-1,-1,1,-1,-1,1,-1,-1,1,-1,1,1,-1,1,1,1,
              1,-1,-1],
  }

  @seq.each do |a, ns|
    ns.each_with_index do |j, n|
      it "returns #{j} for #{a}.jacobi(#{n})" do
        n.jacobi(a).should == j
      end
    end
  end

  # A077009
  [1,-1,1,-1,0,-1,1,1,1,-1,0,-1,0,0,1,-1,-1,-1,1,0,
   1,-1,0,-1,0,-1,1,0,0,-1,1,0,-1,-1,1,-1,1,0,1,-1,0,
   -1,1,1,1,-1,0,1,1,0,1,-1,0,-1,1,0,1,1,0,1,0,-1,0,
   -1,0,-1,1,0,1,-1,1,-1,-1,0,1,-1,0,0,1,1,1,-1,0,-1,
   0,0,1,0,-1,-1,1,0,1,1,0,-1,1,0,1,-1].each_with_index do |j, n|
    n = (2 * n).succ
    a = n.φ
    it "returns #{j} for #{a}.jacobi(#{n})" do
      a.jacobi(n).should == j
    end
  end

  # A077010
  [1,1,1,1,1,1,1,0,1,1,-1,1,1,1,1,1,0,1,1,-1,1,1,0,
   1,1,0,1,1,-1,1,1,-1,-1,1,0,1,1,1,1,1,1,1,1,0,1,0,
   -1,0,1,0,1,1,0,1,1,-1,1,1,0,1,1,0,1,1,-1,1,1,0,1,
   1,0,1,0,0,1,1,0,1,1,0,-1,1,0,1,1,-1,1,-1,0,1,1,-1,
   1,1,1,1,1,0,1,1].each_with_index do |j, n|
    n = (2 * n).succ
    a = n.σ
    it "returns #{j} for #{a}.jacobi(#{n})" do
      a.jacobi(n).should == j
    end
  end
  
  [2, 10, -4, 0].each do |n|
    10.times do |a|
      it "returns nil for #{a}.jacobi(#{n})" do
        a.jacobi(n).should be_nil
      end
    end
  end
end
  




