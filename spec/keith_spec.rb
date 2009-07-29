describe Integer, "#keith?" do
  # http://www.research.att.com/~njas/sequences/A007629
  KEITH = [14,19,28,47,61,75,197,742,1104,1537,2208,2580,
           3684,4788,7385,7647,7909,31331,34285,34348,55604,
           62662,86935,93993,120284,129106,147640,156146,
           174680,183186,298320,355419,694280,925993,1084051,
           7913837,11436171,33445755,44121607]

  it "returns true for Keith numbers" do
    KEITH.each do |number|
      number.should be_keith
    end
  end

  it "returns false for non-Keith numbers" do
    ((1..200).to_a - KEITH).each do |number|
      number.should_not be_keith
    end
  end
end

