describe Integer, "#betrothed?" do
  # A005276, augmented with http://djm.cc/reduced.fmtlist
  @seq = [[48, 75],
          [140, 195],
          [1050, 1925],
          [1575, 1648],
          [2024, 2295],
          [5775, 6128],
          [8892, 16587],
          [9504, 20735],
          [62744, 75495],
          [186615, 206504],
          [196664, 219975],
          [199760, 309135],
          [266000, 507759],
          [312620, 549219],
          [526575, 544784],
          [573560, 817479],  
          [587460, 1057595],
          [1000824, 1902215],
          [1081184, 1331967],
          [1139144, 1159095],
          [1140020, 1763019],
          [1173704, 1341495],
          [1208504, 1348935],
          [1233056, 1524831],
          [1236536, 1459143],
          [1279950, 2576945],
          [1921185, 2226014],
          [2036420, 2681019],
          [2102750, 2142945],
          [2140215, 2421704],
  ]

  @seq.each do |n, m|
    it "returns true for betrothed pair #{n}, #{m}" do
      n.should be_betrothed(m)
      m.should be_betrothed(n)
    end
  end

  @seq.each do |n, m|
    n -= 1
    it "returns false for non-betrothed pair #{n}, #{m}" do
      n.should_not be_betrothed(m)
      m.should_not be_betrothed(n)
    end
  end

  10.times do
    n, m = 2.times.map{ Random.new.rand(@seq.last.max) }
    redo if @seq.include?([n, m])
    it "returns false for non-betrothed pair #{n}, #{m}" do
      n.should_not be_betrothed(m)
      m.should_not be_betrothed(n)
    end
  end
end
