# A034386 
PRIMORIAL = [1,2,6,6,30,30,210,210,210,210,2310,2310,30030,
             30030,30030,30030,510510,510510,9699690,9699690,
             9699690,9699690,223092870,223092870,223092870,
             223092870,223092870,223092870,6469693230,
             6469693230]

describe Integer, "#primorial" do

  PRIMORIAL.each_with_index do |n,i|
    i = i.succ
    it "should return #{n} for #{i}" do
      i.primorial.should  == n
    end
  end
end

describe Integer, "#primorial?" do
  PRIMORIAL.uniq.each do |n|
    it "should return true for primorial number #{n}" do
      n.should be_primorial
    end
  end

  PRIMORIAL.to_seq.invert.first(20).each do |n|
    it "should return false for non-primorial number #{n}" do
      n.should_not be_primorial
    end
  end
end
