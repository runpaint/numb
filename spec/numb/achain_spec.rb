# coding: utf-8
describe Integer, "#achain" do
  # A003313 
  @seq = [0,1,2,2,3,3,4,3,4,4,5,4,5,5,5,4,5,5,6,5,6,6,6,5,6,6,6,6,7,6,7,5,6,
          6,7,6,7,7,7,6,7,7,7,7,7,7,8,6,7,7,7,7,8,7,8,7,8,8,8,7,8,8,8,6,7,7,
          8,7,8,8,9,7,8,8,8,8,8,8,9,7,8,8,8,8,8,8,9,8,9,8,9,8,9,9,9,7,8,8,8,8,]

  @seq.to_enum.with_index(1) do |len, n|
    achain = n.achain

    it "returns an addition chain of #{len} terms for #{n}" do
      (achain.size - 1).should == len
    end

    it "returns an addition chain for #{n} that ends with #{n}" do
      achain.last.should == n
    end

    it "returns an addition chain for #{n} that begins with 1" do
      achain.first.should == 1
    end

    it "returns an addition chain for #{n} without any duplicate terms" do
      achain.uniq.should == achain
    end

    it "returns an addition chain for #{n} with terms ordered by smallest to largest" do
      achain.sort.should == achain
    end

    it "returns an addition chain for #{n} whose terms are the sum of two preceeding terms" do
      chain = achain.reverse
      sums = (chain * 2).permutation(2).to_a.uniq.map{|perm| perm.reduce(:+)}
      chain[0..-2].each do |t|
        sums.should include(t)
      end
    end
  end
end
