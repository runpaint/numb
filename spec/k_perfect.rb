describe Integer, "#k_perfect?" do
  # A007539
  FIRST_K_PERFECT = [1, 6, 120, 30240, 14182439040, 154345556085770649600, 
                     141310897947438348259849402738485523264343544818565120000, 
                     8268099687077761372899241948635962893501943883292455548843932421413884476391773708366277840568053624227289196057256213348352000000000]

  # A005820
  TRIPERFECT = [120,672,523776,459818240,1476304896,51001180160]

  # A027687
  QUADRUPLY_PERFECT = [30240,32760,2178540,23569920,45532800,142990848,
                        1379454720,43861478400,66433720320]
  
  FIRST_K_PERFECT.first(5).each_with_index do |n, i|
    k = i + 1
    it "should return true for #{k}-perfect number #{n}" do
      n.k_perfect?(k).should be_true
    end

    it "should return false for a number k-perfect for a different k, e.g. (#{n}, #{k+1})" do
      n.k_perfect?(k+1).should be_false
    end
  end

  TRIPERFECT.first(3).each do |n|
    it "returns true for triperfect number #{n} when k = 3" do
      n.k_perfect?(3).should be_true
    end

    it "returns false for non-triperfect number #{n-1} when k = 3" do
      (n-1).k_perfect?(3).should be_false
    end
  end

  QUADRUPLY_PERFECT.first(3).each do |n|
    it "returns true for quadruply-perfect number #{n} when k = 4" do
      n.k_perfect?(4).should be_true
    end

    it "returns false for non-quadruply-perfect number #{n-1} when k = 4" do
      (n-1).k_perfect?(4).should be_false
    end
  end
end
