describe Integer, "#nth_prime" do
  Prime.first(20).each_with_index do |prime, n|
    n = n.succ
    it "should return #{prime} as the #{n}#{n.ordinal} prime" do
      n.nth_prime.should == prime
    end
  end
end
