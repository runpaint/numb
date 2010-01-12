describe Integer, "#sierpinski?" do
  SIERPINSKI = [78557,271129,271577,322523,327739,482719,575041,
                603713,903983,934909,965431,1259779,1290677,
                1518781,1624097,1639459,1777613,2131043,2131099,
                2191531,2510177,2541601,2576089,2931767,2931991,
                3083723,3098059]

  SIERPINSKI.first(1).each do |n|
    it "should return true for Sierpinksi number #{n}" do
      n.should be_sierpinski
    end
  end

  it "should return false for non-Sierpinski number 234" do
    234.should_not be_sierpinski
  end
end
