describe Integer, "#proth?" do
  # A080075
  PROTH = [3,5,9,13,17,25,33,41,49,57,65,81,97,113,129,145,
           161,177,193,209,225,241,257,289,321,353,385,417,
           449,481,513,545,577,609,641,673,705,737,769,801,
           833,865,897,929,961,993,1025,1089,1153,1217,1281,
           1345,1409]

  PROTH.each do |n|
    it "should return true for Proth number #{n}" do
      n.should be_proth
    end
  end

  (1..PROTH.last).each do |n|
    next if PROTH.include? n
    it "should return false for non-Proth number #{n}" do
      n.should_not be_proth
    end
  end
end
