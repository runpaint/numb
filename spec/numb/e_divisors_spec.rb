describe Integer, "#e_divisors" do
  # A051377 
  @sums = [1,2,3,6,5,6,7,10,12,10,11,18,13,14,15,22,17,24,
           19,30,21,22,23,30,30,26,30,42,29,30,31,34,33,34,
           35,72,37,38,39,50,41,42,43,66,60,46,47,66,56,60,
           51,78,53,60,55,70,57,58,59,90,61,62,84,78,65,66,
           67,102,69,70,71]

  # A049419 
  @counts = [1,1,1,2,1,1,1,2,2,1,1,2,1,1,1,3,1,2,1,2,1,1,1,2,
             2,1,2,2,1,1,1,2,1,1,1,4,1,1,1,2,1,1,1,2,2,1,1,3,2,
             2,1,2,1,2,1,2,1,1,1,2,1,1,2,4,1,1,1,2,1,1,1,4,1,1,
             2,2,1,1,1,3,3,1,1,2,1,1,1,2,1,2,1,2,1,1,1,2,1,2,2,
             4,1,1]
  
  # A157488
  @products = [1,2,3,8,5,6,7,16,27,10,11,72,13,14,15,128,17,
               108,19,200,21,22,23,144,125,26,81,392,29,30,31,64,33,34,
               35,46656,37,38,39,400,41,42,43,968,675,46,47,3456,343,500,
               51,1352,53,324,55,784,57,58,59,1800,61,62,1323,4096]

  @counts.to_enum.with_index(1) do |count, n|
    e_divisors = n.e_divisors
    
    it "returns #{count} e divisors for #{n}" do
      e_divisors.size.should == count
    end

    if sum = @sums[n-1]
      it "returns e divisors with a sum of #{sum} for #{n}" do
        e_divisors.reduce(:+).should == sum
      end
    end
    
    if product = @products[n-1]
      it "returns e divisors with a product of #{product} for #{n}" do
        e_divisors.reduce(:*).should == product
      end
    end
  end
end
