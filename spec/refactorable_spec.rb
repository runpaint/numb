describe Integer, "#refactorable?" do
  # A033950
  REFACTORABLE = [1,2,8,9,12,18,24,36,40,56,60,72,80,84,88,96,104,
                  108,128,132,136,152,156,180,184,204,225,228,232,
                  240,248,252,276,288,296,328,344,348,360,372,376,
                  384,396,424,441,444,448,450,468,472,480,488,492,
                  504,516,536]

  (1..REFACTORABLE.last).each do |n|
    if REFACTORABLE.include?(n)
      it "should return true for refactorable number #{n}" do
        n.should be_refactorable
      end
    else
      it "should return false for non-refactorable number #{n}" do
        n.should_not be_refactorable
      end
    end
  end
end
