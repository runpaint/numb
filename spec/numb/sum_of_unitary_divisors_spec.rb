describe Integer, "#sum_of_unitary_divisors" do
  # A034448
  @seq = [1,3,4,5,6,12,8,9,10,18,12,20,14,24,24,17,18,30,
          20,30,32,36,24,36,26,42,28,40,30,72,32,33,48,54,
          48,50,38,60,56,54,42,96,44,60,60,72,48,68,50,78,
          72,70,54,84,72,72,80,90,60,120,62,96,80,65,84,144,
          68,90,96,144]

  @seq.to_enum.with_index(1).each do |sum, n|
    it "should return #{sum} for #{n}" do
      n.sum_of_unitary_divisors.should == sum
    end
  end
end
