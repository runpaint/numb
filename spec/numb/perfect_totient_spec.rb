describe Integer, "#perfect_totient?" do
  # A082897
  @seq = [3,9,15,27,39,81,111,183,243,255,327,363,471,729,
          2187,2199,3063,4359,4375,5571,6561,8751,15723,
          19683,36759,46791,59049,65535,140103,177147,
          208191,441027,531441,1594323,4190263,4782969,
          9056583,14348907,43046721] |
    # A091847
         [15,39,111,183,255,327,363,471,2199,3063,4359,
          4375,5571,8751,15723,36759,46791,65535,140103,
          208191,441027,4190263,9056583,57395631,172186887,
          236923383,918330183,3932935775,4294967295,
          4764161215]

  @seq.each do |n|
    it "returns true for perfect totient number #{n}" do
      n.should be_perfect_totient
    end

    m =  n + 2
    it "returns false for non-perfect-totient number #{m}" do
      m.should_not be_perfect_totient
    end  

    m += 1
    it "returns false for even number #{m}" do
      m.should_not be_perfect_totient
    end  
  end
end
