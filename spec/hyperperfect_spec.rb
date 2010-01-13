describe Integer, "#hyperperfect?" do
  @seq = {
            # A000396
    1 =>    [6,28,496,8128,33550336,8589869056,137438691328,
            2305843008139952128,
            2658455991569831744654692615953842176,
            191561942608236107294793378084303638130997321548169216].to_seq,
            # A028499
    6 =>    [301,16513,60110701,1977225901].to_seq,
            # A028501
    18 =>   [1333,1909,2469601,893748277].to_seq,
            # A028502
    2772 => [95295817,124035913,749931337,4275383113].to_seq
  }

  @seq.each do |k, members|
    members.first(4).sample(1).each do |n|
      it "should return true for #{k}-hyperperfect number #{n}" do
        n.hyperperfect?(k).should be_true
      end
    end

    members.invert.first(10).sample(1).each do |n|
      it "should return false for non-#{k}-hyperperfect number #{n}" do
        n.hyperperfect?(k).should be_false
      end
    end
  end
end
