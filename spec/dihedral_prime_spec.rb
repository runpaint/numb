describe Integer, "#dihedral_prime?" do
                   # http://www.research.att.com/~njas/sequences/A038136
  DIHEDRAL_PRIME = ([2,11,101,181,1181,1811,18181,108881,110881,
                    118081,120121,121021,121151,150151,151051,151121,
                    180181,180811,181081,188011,188801,1008001,
                    1022201,1028011,1055501,1058011,1082801,1085801,
                    1088081] +
                   # http://www.research.att.com/~njas/sequences/A134996
                   [2,5,11,101,181,1181,1811,18181,108881,110881,
                    118081,120121,121021,121151,150151,151051,151121,
                    180181,180811,181081,188011,188801,1008001,
                    1022201,1028011,1055501,1058011,1082801,1085801,
                    1088081]).uniq

  it "returns true for Dihedral primes" do
    DIHEDRAL_PRIME.each do |number|
      number.should be_dihedral_prime
    end
  end

  it "returns false for non-Dihedral primes" do
    [6,12,4827290].each do |number|
      number.should_not be_dihedral_prime
    end
  end

  it "returns false for primes which aren't Dihedral" do
    [3,17,19].each do |number|
      number.should_not be_dihedral_prime
    end
  end

  it "returns false for non-primes which are Dihedral" do
    [8, 808, 1101].each do |number|
      number.should_not be_dihedral_prime
    end
  end
end
