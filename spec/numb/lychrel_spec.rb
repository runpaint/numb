describe Integer, "#lychrel?" do
  # A023108 
  @seq = [196,295,394,493,592,689,691,788,790,879,887,978,
          986,1495,1497,1585,1587,1675,1677,1765,1767,1855,
          1857,1945,1947,1997,2494,2496,2584,2586,2674,2676,
          2764,2766,2854,2856,2944,2946,2996,3493,3495,3583,
          3585,3673,3675]

  @seq.each do |n|
    it "returns true for Lychrel number #{n}" do
      n.should be_lychrel
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-Lychrel number #{n}" do
      n.should_not be_lychrel
    end
  end
end
