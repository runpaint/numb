describe Integer, "#superabundant?" do
  # A004394
  SUPERABUNDANT = [1,2,4,6,12,24,36,48,60,120,180,240,360,720,840,
                  1260,1680,2520,5040,10080,15120,25200,27720,55440,
                  110880,166320,277200,332640,554400,665280,720720,
                  1441440,2162160,3603600,4324320,7207200,8648640,
                  10810800]

  SUPERABUNDANT.first(20).each do |n|
    it "should return true for superabundant number #{n}" do
      n.should be_superabundant
    end
  end

  ((1..SUPERABUNDANT.last).first(20) - SUPERABUNDANT).each do |n|
    it "should return false for non-superabundant number #{n}" do
      n.should_not be_superabundant
    end
  end
end
