describe Integer, "#composite?" do
  COMPOSITE = [4,6,8,9,10,12,14,15,16,18,20,21,22,24,25,26,27,
               28,30,32,33,34,35,36,38,39,40,42,44,45,46,48,49,
               50,51,52,54,55,56,57,58,60,62,63,64,65,66,68,69,
               70,72,74,75,76,77,78,80,81,82,84,85,86,87,88]
  
  it "returns true for composite numbers" do
    COMPOSITE.each{|n| n.should be_composite}
  end

  it "returns false for non-composite numbers" do
    ((0..88).to_a - COMPOSITE).each{|n| n.should_not be_composite}
  end

  it "returns false for 1" do
    1.should_not be_composite
  end

  it "returns false for primes" do
    Prime.first(300).each{|n| n.should_not be_composite}
  end
end
