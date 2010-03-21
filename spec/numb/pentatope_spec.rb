# coding: utf-8
describe Integer, "#pentatope" do
  # A000332 
  @seq = [0,0,0,0,1,5,15,35,70,126,210,330,495,715,1001,
          1365,1820,2380,3060,3876,4845,5985,7315,8855,
          10626,12650,14950,17550,20475,23751,27405,31465,
          35960,40920,46376,52360,58905,66045,73815,82251,
          91390,101270,111930,123410][3..-1]

  @seq.each_with_index do |pe, n|
    it "returns #{pe} for the #{n}#{n.ordinal} pentatope number" do
      n.pentatope.should == pe
    end
  end
end
