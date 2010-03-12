describe Integer, "#k_perfect?" do
  @seq = {
    # A005820
    3 => [120,672,523776,459818240,1476304896,51001180160].to_seq,
    # A027687
    4 => [30240,32760,2178540,23569920,45532800,142990848,
          1379454720,43861478400,66433720320].to_seq
  }

  # A007539
  @first_seq = [1, 6, 120, 30240, 14182439040, 154345556085770649600, 
                141310897947438348259849402738485523264343544818565120000, 
                8268099687077761372899241948635962893501943883292455548843932421413884476391773708366277840568053624227289196057256213348352000000000].to_seq

  
  @first_seq.each_with_index.first(5).sample(2).each do |n, i|
    k = i + 1
    it "should return true for #{k}-perfect number #{n}" do
      n.k_perfect?(k).should be_true
    end

    it "should return false for a number k-perfect for a different k, e.g. (#{n}, #{k+1})" do
      n.k_perfect?(k+1).should be_false
    end
  end

  @seq.each do |k, members|
    members.sample(2).each do |n|
      it "should return true for #{k}-perfect number #{n}" do
        n.k_perfect?(k).should be_true
      end
    end

    members.invert.sample(1).each do |n|
      it "should return false for non-#{k}-perfect number #{n}" do
        n.k_perfect?(k).should be_false
      end
    end
  end
end
