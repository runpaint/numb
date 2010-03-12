describe Integer, "#self_descriptive?" do
  SELF_DESCRIPTIVE = [nil,nil,nil,nil,1210,21200,nil,
                      3211000,42101000,521001000,6210001000]
  
  SELF_DESCRIPTIVE.each_with_index do |number, base|
    next if number.nil?
    it "returns true if the number is self-descriptive in base #{base}" do
      number.self_descriptive?(base).should be_true
    end
  end

  [21,101,2345,26871,112200,1723492,
   66287620,112276826,2386520171].each do |number|
    base = number.digits.size
    it "returns false if the number isn't self-descriptive in base #{base}" do
      number.to_s(base).to_i.self_descriptive?(base).should be_false
    end
  end
end
