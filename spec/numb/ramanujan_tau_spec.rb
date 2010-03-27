# coding: utf-8
describe Integer, "#ramanujan_tau" do
  # A000594
  @seq = [1,-24,252,-1472,4830,-6048,-16744,84480,-113643,
          -115920,534612,-370944,-577738,401856,1217160,
          987136,-6905934,2727432,10661420,-7109760,
          -4219488,-12830688,18643272,21288960,-25499225,
          13865712,-73279080,24647168]

  @seq.to_enum.with_index(1).each do |r, n|
    it "returns #{r} for #{n}" do
      n.ramanujan_tau.should == r
    end
  end

  # Confirm some arbitrary large(ish) values to confirm we aren't subject to
  # rounding errors
  [[1357, -96743736788237280], [1314, 3992391292945104]].each do |n, r|
    it "returns #{r} for #{n}" do
      n.ramanujan_tau.should == r
    end
  end
end
