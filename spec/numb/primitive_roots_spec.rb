describe Integer, "#primitive_roots" do
  # A046144
  @seq = [1,1,1,1,2,1,2,0,2,2,4,0,4,2,0,0,8,2,6,0,0,4,10,0,
          8,4,6,0,12,0,8,0,0,8,0,0,12,6,0,0,16,0,12,0,0,10,
          22,0,12,8,0,0,24,6,0,0,0,12,28,0,16,8,0,0,0,0,20,
          0,0,0,24,0,24,12,0,0,0,0,24,0,18,16,40,0,0,12,0,0,
          40,0,0]

  @seq.to_enum.with_index(1).each do |count,n|
    pr = n.primitive_roots
    it "returns #{count} primitive roots for #{n}" do
      pr.size.should == count
      pr.uniq.size.should == pr.size
    end
    
    pr.sample(2).each do |root|
      it "returns actual primitive roots, e.g. #{root} for #{n}" do
        n.primitive_root?(root)
      end
    end
  end
  
  # A046146 
  @seq = [0,0,1,2,3,3,5,5,0,5,7,8,0,11,5,0,0,14,11,15,0,0,
          19,21,0,23,19,23,0,27,0,24,0,0,31,0,0,35,33,0,0,
          35,0,34,0,0,43,45,0,47,47,0,0,51,47,0,0,0,55,56,0,
          59,55,0,0,0,0,63,0,0,0,69,0,68,69,0,0,0,0,77,0,77,
          75,80,0,0].each_with_index.to_a.sample(15).each do |largest, n|
    next if largest.zero?
    it "returns #{largest} as the largest primitive root of #{n}" do
      n.primitive_roots.max.should == largest
    end
  end
end
