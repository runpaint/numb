# coding: utf-8
describe Integer, "#brilliant?" do
  # A078972
  @seq = [4,6,9,10,14,15,21,25,35,49,121,143,169,187,209,
          221,247,253,289,299,319,323,341,361,377,391,403,
          407,437,451,473,481,493,517,527,529,533,551,559,
          583,589,611,629,649,667,671,689,697,703,713,731,
          737,767,779,781]

  @seq.each do |n|
    it "returns true for brilliant number #{n}" do
      n.should be_brilliant
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-brilliant number #{n}" do
      n.should_not be_brilliant
    end
  end
end
