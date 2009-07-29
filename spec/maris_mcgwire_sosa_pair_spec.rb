describe Integer, "#maris_mcgwire_sosa_pair?" do

  MMS = [7,14,43,50,61,63,67,80,84,118,122,134,137,163,
         196,212,213,224,241,273,274,277,279,283,351,352,
         373,375,390,398,421,457,462,474,475,489,495,510,
         516,523,526,537,547,555,558,577,584,590,592,616,
         638,644,660,673,687,691]

  it "returns true for Maris-McGwire-Sosa pairs" do
    MMS.each do |number|
      number.maris_mcgwire_sosa_pair?(number+1).should be_true
    end
  end

  it "returns false for non-Maris-McGwire-Sosa pairs" do
    ((1..200).to_a - MMS).each do |number|
      number.maris_mcgwire_sosa_pair?(number+1).should be_false
    end
  end
end
