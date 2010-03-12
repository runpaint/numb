describe Integer, "#ore?" do
  # A001599
  ORE = [1,6,28,140,270,496,672,1638,2970,6200,8128,8190,
         18600,18620,27846,30240,32760,55860,105664,117800,
         167400,173600,237510,242060,332640,360360,539400,
         695520,726180,753480,950976,1089270,1421280,
         1539720]

  ORE.each do |n|
    it "returns true for Ore number #{n}" do
      n.should be_ore
    end
  end

  (1..1_000).each do |n|
    next if ORE.include? n
    it "returns false for non-Ore number #{n}" do
      n.should_not be_ore
    end
  end
end
