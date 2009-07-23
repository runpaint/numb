describe Integer, "#narcissistic?" do
  NARCISSISTIC = [1,2,3,4,5,6,7,8,9,153,370,371,407,1634,8208,9474,
                  54748,92727,93084,548834,1741725,4210818,9800817,
                  9926315,24678050,24678051,88593477,146511208,
                  472335975,534494836,912985153,4679307774,
                  32164049650,32164049651]
  it "returns true for narcissistic numbers" do
    NARCISSISTIC.each do |number|
      number.should be_narcissistic
    end
  end

  it "returns false for non-narcissistic numbers" do
    [10,30,100,178762628].each do |number|
      number.should_not be_narcissistic
    end
  end
end
