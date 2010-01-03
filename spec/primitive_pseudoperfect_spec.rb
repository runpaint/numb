describe Integer, "#primitive_pseudoperfect" do
  PPP = [6,20,28,88,104,272,304,350,368,464,490,496,550,
         572,650,748,770,910,945,1184,1190,1312,1330,1376,
         1430,1504,1575,1610,1696,1870,1888,1952,2002,2030,
         2090,2170,2205,2210,2470,2530,2584,2590,2870,2990,
         3010,3128,3190,3230,3290,3410,3465,3496,3710,3770,
         3944,4070,4095,4130,4216,4270,4288,4408,4510,4544,
         4672,4690,4712,4730,4970]
  it "returns true for primitive pseudoperfect numbers" do
    PPP.shuffle.first(10).each{|_| _.should be_primitive_pseudoperfect}
  end

  it "returns true for primitive pseudoperfect numbers" do
    ((1..PPP.max).to_a - PPP).shuffle.
                              first(10).
                              each{|_| _.should_not be_primitive_pseudoperfect}
  end
end
