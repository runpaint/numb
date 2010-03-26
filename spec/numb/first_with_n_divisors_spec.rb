# coding: utf-8
describe Integer, "#first_with_n_divisors" do
  # A005179
  @seq = [1,2,4,6,16,12,64,24,36,48,1024,60,4096,192,144,
          120,65536,180,262144,240,576,3072,4194304,360,
          1296,12288,900,960,268435456,720,1073741824,840,
          9216,196608,5184,1260,68719476736,786432,36864,
          1680,1099511627776,2880]

  @seq.to_enum.with_index(1).each do |d, n|
    it "returns #{d} as the first number with exactly #{n} divisors" do
      n.first_with_n_divisors.should == d
    end
  end
end
