describe Integer, "#dihedral_prime?" do
          # A038136
  @seq = ([2,11,101,181,1181,1811,18181,108881,110881,
           118081,120121,121021,121151,150151,151051,151121,
           180181,180811,181081,188011,188801,1008001,
           1022201,1028011,1055501,1058011,1082801,1085801,
           1088081] +
          # A134996
          [2,5,11,101,181,1181,1811,18181,108881,110881,
           118081,120121,121021,121151,150151,151051,151121,
           180181,180811,181081,188011,188801,1008001,
           1022201,1028011,1055501,1058011,1082801,1085801,
           1088081]).uniq.to_seq

  @seq.each do |n|
    it "returns true for Dihedral prime #{n}" do
      n.should be_dihedral_prime
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-Dihedral-prime #{n}" do
      n.should_not be_dihedral_prime
    end
  end

  [3, 7, 9].each do |n|
    it "returns false for #{n} which is a prime but not Dihedral" do
      n.should_not be_dihedral_prime
    end
  end

  [8, 808, 1101].each do |n|
    it "returns false for #{n} which is Dihedral and composite" do
      n.should_not be_dihedral_prime
    end
  end
end
