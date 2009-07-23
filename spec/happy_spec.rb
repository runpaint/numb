describe Integer, "#happy?" do
  HAPPY = [1,7,10,13,19,23,28,31,32,44,49,68,70,79,82,86,91,
           94,97,100,103,109,129,130,133,139,167,176,188,190,
           192,193,203,208,219,226,230,236,239,262,263,280,
           291,293,301,302,310,313,319,320,326,329,331,338]
  it "returns true for happy numbers" do
    HAPPY.each do |number|
      number.should be_happy
    end
  end

  it "returns false for unhappy numbers" do
    ((1..338).to_a - HAPPY).each do |number|
      number.should_not be_happy
    end
  end

  it "returns false for negative numbers" do
    (1..338).each do |number|
      (-number).should_not be_happy
    end
  end
end

