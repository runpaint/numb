describe Integer, "#polite?" do
  it "returns true for polite numbers" do
    [1,3,5,6,7,9,10,11,12,13,14,15,17,18,19,20,21,22,
       23,24,25,26,27,28,29,30,31,33,34,35,36,37,38,39,40].each do |polite|
      polite.should be_polite
    end
  end

  it "returns false for impolite numbers" do
    [2,4,8,16,32].each do |impolite|
      impolite.should_not be_polite
    end
  end
end
