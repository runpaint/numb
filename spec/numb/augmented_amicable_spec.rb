describe Integer, "#augmented_amicable?" do

         # A007992, A015630
  @seq = [6160,12220,23500,68908,249424,425500,434784,
          649990,660825,1017856,1077336,1238380,1252216,
          1568260,1754536,2166136,2362360,2482536,2537220,
          2876445,3957525,4177524,4287825,5224660,5559510,
          5641552].zip(
         [11697,16005,28917,76245,339825,570405,871585,
          697851,678376,1340865,2067625,1823925,1483785,
          1899261,2479065,2580105,4895241,4740505,5736445,
          3171556,4791916,6516237,4416976,7524525,9868075,
          7589745])

  @seq.each do |m, n|
    it "should return true for augmented amicable pair (#{m}, #{n})" do
      m.augmented_amicable?(n).should be_true
    end

    it "should return true for augmented amicable pair (#{n}, #{m})" do
      n.augmented_amicable?(m).should be_true
    end
  end

  [[234,234], [78982,72101], [13,7], [100019,276281], [1,0]].each do |m, n|
    it "should return false for non-augmented amicable pair (#{m}, #{n})" do
      m.augmented_amicable?(n).should be_false
    end

    it "should return false for non-augmented amicable pair (#{n}, #{m})" do
      n.augmented_amicable?(m).should be_false
    end
  end

  it "should return false for amicable but non-augmented pair (220, 284)" do
    220.augmented_amicable?(284).should be_false
  end
end
