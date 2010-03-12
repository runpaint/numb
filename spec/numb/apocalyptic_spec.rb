describe Integer, "#apocalyptic?" do
  # A007356 
  @seq = [157,192,218,220,222,224,226,243,245,247,251,278,
          285,286,287,312,355,361,366,382,384,390,394,411,
          434,443,478,497,499,506,508,528,529,539,540,541,
          564,578,580,582,583,610].to_seq

  @seq.each do |n|
    it "should return true for apocalyptic number #{n}" do
      n.should be_apocalyptic
    end
  end

  @seq.invert.sample(100).each do |n|
    it "should return false for non-apocalyptic number #{n}" do
      n.should_not be_apocalyptic
    end
  end
end
