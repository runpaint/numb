describe Integer, "emrip?" do
  # http://www.research.att.com/~njas/sequences/A006567
  EMRIP = [13,17,31,37,71,73,79,97,107,113,149,157,167,179,
           199,311,337,347,359,389,701,709,733,739,743,751,
           761,769,907,937,941,953,967,971,983,991,1009,1021,
           1031,1033,1061,1069,1091,1097,1103,1109,1151,1153,
           1181,1193]

  it "returns true for primes that give a different prime when reversed" do
    EMRIP.each do |number|
      number.should be_emrip
    end
  end

  it "returns false for non-emrips" do
    ((1..1193).to_a  - EMRIP).each do |number|
      number.should_not be_emrip
    end
  end

  it "returns false for palindromic primes" do
    [11,151].each do |number|
      number.should_not be_emrip
    end
  end
end
