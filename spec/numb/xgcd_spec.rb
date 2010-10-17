describe Integer, "#xgcd" do
  
  # Data from Mathematica's ExtendedGCD[] function
  # The keys are the arguments; the values, the results.
  @seq = {
    [56, 72] => [8, 4, -3],
    [3, 7] => [1, -2, 1],
    [10, 100] => [10, 1, 0],
    [13, 11] => [1, -5, 6],
    [79, 3] => [1, 1, -26],
    [3, 65] => [1, 22, -1],
    [-3, 65] => [1, -22, -1],
    [3, -65] => [1, 22, 1],
    [5, 0] => [5, 1, 0],
    [73713, 3971] => [1, -1512, 28067],
    [-234, 2] => [2, 0, 1],
    [-876, 52] => [4, -6, -101],
  }

  @seq.each_pair do |input, output|
    it "returns #{output} for #{input.first}.xgcd(#{input.last})" do
      input.first.xgcd(input.last).should == output
    end
  end
end
