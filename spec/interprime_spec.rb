describe Integer, "#interprime?" do
  # A024675
  INTERPRIME = [4,6,9,12,15,18,21,26,30,34,39,42,45,50,56,60,64,
                69,72,76,81,86,93,99,102,105,108,111,120,129,134,
                138,144,150,154,160,165,170,176,180,186,192,195,
                198,205,217,225,228,231,236,240,246,254,260,266,
                270,274,279,282,288,300]

  (1..INTERPRIME.last).each do |n|
    if INTERPRIME.include? n
      it "should return true for interprime #{n}" do
        n.should be_interprime
      end
    else
      it "should return false for non-interprime #{n}" do
        n.should_not be_interprime
      end
    end
  end
end
