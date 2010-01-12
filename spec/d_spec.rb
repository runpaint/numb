# coding: utf-8
describe Integer, "#d?" do
  # A033553
  D = [9,15,21,33,39,51,57,63,69,87,93,111,123,129,141,
       159,177,183,195,201,213,219,237,249,267,291,303,
       309,315,321,327,339,381,393,399,411,417,447,453,
       471,489,501,519,537,543,573,579,591,597,633,669,
       681,687,693]

  D.each do |n|
    it "should return true for D-number #{n}" do
      n.should be_d
    end
    
    3.times.map do
      r = Random.new.rand(D.first..D.last) 
      redo if D.include?(r)
      r
    end.each do |n|
      it "should return false for non-D-number #{n}" do
        n.should_not be_d
      end
    end
  end
end
