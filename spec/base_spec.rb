describe Integer, "#base" do
  @base = {
          binary:          2, ternary:       3, quaternary:     4,
          quinary:         5, senary:        6, septenary:      7, 
          octal:           8, nonary:        9, decimal:       10, 
          undecimal:      11, duodecimal:   12, tridecimal:    13,
          tetradecimal:   14, pentadecimal: 15, hexadecimal:   16,
          septendecimal:  17, decennoctal:  18, decennoval:    19,
          vigesimal:      20, trigesimal:   30, quadragesimal: 40,
          quinquagesimal: 50, sexagesimal:  60, septuagesimal: 70,
          octagesimal:    80, nonagesimal:  90, centesimal:   100,
          millesimal:  1_000
  }

  @base.each do |base_name, base|
    break if base > 36
    (0..100).to_a.sample(10).each do |n|
      converted = n.to_s(base)
      it "should return #{converted} for #{n} in base #{base}" do
        n.base(base).should == converted
      end

      it "should return #{converted} for #{n} in #{base_name}" do
        n.base(base_name).should == converted
      end
    end
  end

  it "should raise ArgumentError for base 1" do
    ->{ 2.base(1) }.should raise_error(ArgumentError)
  end

  [
    [3, 100, '3'], [0, 77, '0'], [20, 60, 'k'], [1234, 100, 'cy']
  ].each do |n, base, r|
    it "should return #{r} for #{n} in base #{base}" do
      n.base(base).should == r
    end
  end

  it "should return a Hash of bases to values when given no argument" do
    19.base.should == {
      2  => "10011",    3 => "201",     4 => "103",  5 => "34",  6 => "31", 
      7  =>    "25",    8 =>  "23",     9 =>  "21", 10 => "19", 11 => "18", 
      12 =>    "17",   13 =>  "16",    14 =>  "15", 15 => "14", 16 => "13",
      17 =>    "12",   18 =>  "11",    19 =>  "10", 20 =>  "j", 30 =>  "j", 
      40 =>     "j",   50 =>   "j",    60 =>    "j",70 =>  "j", 80 =>  "j", 
      90 =>     "j",  100 =>   "j",  1000 =>    "j"
    }
  end
end
