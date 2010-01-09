describe Integer, "#sum_of_squares" do

  SOS = [1, # [0, 0, 0, 1]
         2, # [0, 0, 1, 1]
         3, # [0, 1, 1, 1]
         7, # [1, 1, 1, 2]
         9, # Square number
         11,# Prime number
         58, 9634, # Special cases
         123456789, # Large number
  ] + 1000.times.map { Random.new.rand(10..1000_000)} # Random numbers
  SOS.each do |n|
    squares = n.sum_of_squares
    it "should return an Array of 4 Integers for #{n}" do
      squares.should be_kind_of(Array)
      squares.size.should == 4
      squares.all?{|e| e.should be_kind_of(Integer)}
    end

    it "should return integers whose squares sum to give the receiver: #{n}" do
      squares.map{|i| i**2}.reduce(:+).should == n
    end
  end
end
