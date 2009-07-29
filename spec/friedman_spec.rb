describe Integer, "#friedman?" do
  FRIEDMAN = [25,121,125,126,127,128,153,216,289,343,347,625,
              688,736,1022,1024,1206,1255,1260,1285,1296,1395,
              1435,1503,1530,1792,1827,2048,2187,2349,2500,2501,
              2502,2503,2504,2505,2506,2507,2508,2509,2592,2737,
              2916,3125,3159]

    FRIEDMAN.sample(2).each do |number|
      it "returns true for a Friedman number (#{number})" do
        number.should be_friedman
      end
    end

  [24,26,1001,210,98].sample(2).each do |number|
    it "returns false for a non-Friedman number (#{number}" do
      number.should_not be_friedman
    end
  end
end
