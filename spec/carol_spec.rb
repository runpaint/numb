describe Integer, "#carol?" do
  CAROL = [-1,7,47,223,959,3967,16127,65023,261119,1046527,
           4190207,16769023,67092479,268402687,1073676287,
           4294836223,17179607039,68718952447,274876858367,
           1099509530623,4398042316799,17592177655807]

  it "returns true for Carol numbers" do
    CAROL.each do |number|
      number.should be_carol
    end
  end

  it "returns false for non-Carol numbers" do
    ((1..300).to_a - CAROL).each do |number|
      number.should_not be_carol
    end
  end
end
