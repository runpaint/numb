describe Integer, "#vampire?" do
  # http://www.research.att.com/~njas/sequences/A014575
  VAMPIRE = [1260,1395,1435,1530,1827,2187,6880,102510,104260,
             105210,105264,105750,108135,110758,115672,116725,
             117067,118440,120600,123354,124483,125248,125433,
             125460,125500,126027,126846,129640]
  
  it "returns true for vampire numbers" do
    VAMPIRE.each do |number|
      number.should be_vampire 
    end
  end
  
  it "returns false for non-vampire numbers" do
    [1259,22,1396].each do |number|
      number.should_not be_vampire 
    end
  end
end
