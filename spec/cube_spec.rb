describe Integer, "#cube?" do
  # A000578 
  CUBES = [0,1,8,27,64,125,216,343,512,729,1000,1331,1728,
           2197,2744,3375,4096,4913,5832,6859,8000,9261,
          10648,12167,13824,15625,17576,19683,21952,24389,
          27000,29791,32768,35937,39304,42875,46656,50653,
          54872,59319,64000]

  it "returns true for perfect cubes" do
    CUBES.each{|n| n.should be_cube}
  end

  it "returns true for negative perfect cubes" do
    CUBES.shuffle.first(10).each{|n| (-n).should be_cube}
  end

  it "returns false for non-perfect cubes" do
    ((0..CUBES.last).to_a - CUBES).shuffle.first(10).each{|n| n.should_not be_cube}
  end

  it "returns false for negative non-perfect cubes" do
    ((0..CUBES.last).to_a - CUBES).shuffle.first(10).each{|n| (-n).should_not be_cube}
  end
end
