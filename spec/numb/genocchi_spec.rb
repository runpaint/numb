# coding utf-8
describe Integer, "#genocchi" do
  #A001469
  @seq = [-1,1,-3,17,-155,2073,-38227,929569,-28820619,
          1109652905,-51943281731,2905151042481,
          -191329672483963,14655626154768697,
          -1291885088448017715,129848163681107301953,
          -14761446733784164001387]

  (2..(@seq.size * 2)).select(&:even?).each do |n|
   
    m_genocchi = (m = n - 1) == 1 ? 1 : 0
    it "returns #{m_genocchi} for #{m}" do
      m.genocchi.should == m_genocchi
    end

    genocchi = @seq.shift
    it "returns #{genocchi} for #{n}" do
      n.genocchi.should == genocchi
    end
  end
end
