describe Integer, "#automorphic?" do
  
  AUTOMORPHIC = (
    # http://www.research.att.com/~njas/sequences/A016090
    [6,76,376,9376,9376,109376,7109376,87109376,
     787109376,1787109376,81787109376,81787109376,
     81787109376,40081787109376,740081787109376,
     3740081787109376,43740081787109376,
     743740081787109376] + 
    # http://www.research.att.com/~njas/sequences/A007185
    [5,25,625,625,90625,890625,2890625,12890625,
     212890625,8212890625,18212890625,918212890625,
     9918212890625,59918212890625,259918212890625,
     6259918212890625,56259918212890625,
     256259918212890625] +
    # http://www.research.att.com/~njas/sequences/A003226
    [0,1,5,6,25,76,376,625,9376,90625,109376,890625,
     2890625,7109376,12890625,87109376,212890625,
     787109376,1787109376,8212890625,18212890625,
     81787109376,918212890625,9918212890625,
     40081787109376,59918212890625]
  ).uniq

  it "returns true for automorphic numbers" do
    AUTOMORPHIC.each do |n|
      n.should be_automorphic
    end
  end

  it "returns false for negative automorphic numbers" do
    (AUTOMORPHIC - [0]).each do |n|
      (-n).should_not be_automorphic
    end
  end

  it "returns false for non-automorphic numbers" do
    [2,4,626, 100228].each do |n|
      n.should_not be_automorphic
    end
  end

  it "returns false for negative numbers" do
    [2,4,626, 100228].each do |n|
      (-n).should_not be_automorphic
    end
  end

  it "accepts an optional argument for n" do
    lambda { 3.automorphic?(2) }.should_not raise_error(ArgumentError)
  end

  it "returns true if the number is 2-automorphic and 2 is given as an argument" do
    # http://www.research.att.com/~njas/sequences/A030984
    [8,88,688,4688,54688,554688,3554688,93554688,
     893554688,893554688,40893554688,40893554688,
     40893554688,70040893554688,870040893554688,
     1870040893554688,71870040893554688,
     871870040893554688].each do |number|
      number.automorphic?(2).should be_true
    end
  end

  it "returns false if the number is not 2-automorphic and 2 is given as an argument" do
    [6, 13, 93, 552, 5003, 2827220126666].each do |number|
      number.automorphic?(2).should be_false
     end
  end

  it "returns true if the number is 3-automorphic and 3 is given as an argument" do
    (
      # http://www.research.att.com/~njas/sequences/A030986
      [5,75,875,6875,96875,296875,4296875,4296875,
       404296875,9404296875,39404296875,639404296875,
       6639404296875,86639404296875,86639404296875,
       2086639404296875,52086639404296875] +
      # http://www.research.att.com/~njas/sequences/A030985
      [2,92,792,9792,69792,369792,2369792,62369792,
       262369792,7262369792,27262369792,27262369792,
       27262369792,80027262369792,580027262369792,
       4580027262369792,14580027262369792,
       914580027262369792]
    ).each do |number|
      number.automorphic?(3).should be_true
    end
  end

  it "returns false if the number is not 3-automorphic and 3 is given as an argument" do
    [6, 13, 93, 55, 5003, 2827220126666].each do |number|
      number.automorphic?(3).should be_false
     end
  end

  it "returns true if the number is 4-automorphic and 4 is given as an argument" do
    # http://www.research.att.com/~njas/sequences/A030987
    [4,44,344,7344,77344,777344,6777344,46777344,
     446777344,446777344,20446777344,20446777344,
     5020446777344,35020446777344,935020446777344,
     5935020446777344,35935020446777344].each do |number|
      number.automorphic?(4).should be_true
    end
  end

  it "returns false if the number is not 4-automorphic and 4 is given as an argument" do
    [6, 14, 97, 55, 5000, 2827220126666].each do |number|
      number.automorphic?(4).should be_false
     end
  end

  it "returns true if the number is 5-automorphic and 5 is given as an argument" do
    # http://www.research.att.com/~njas/sequences/A030988
    [5,25,125,8125,78125,578125,2578125,42578125,
     642578125,3642578125,83642578125,983642578125,
     1983642578125,51983642578125,251983642578125,
     1251983642578125,51251983642578125].each do |number|
      number.automorphic?(5).should be_true
    end
  end

  it "returns false if the number is not 5-automorphic and 5 is given as an argument" do
    [6, 97, 55, 5000, 2827220126666].each do |number|
      number.automorphic?(5).should be_false
     end
  end

  it "returns true if the number is 6-automorphic and 6 is given as an argument" do
    # http://www.research.att.com/~njas/sequences/A030989
    [6,96,896,4896,84896,184896,1184896,31184896,
     631184896,3631184896,13631184896,13631184896,
     13631184896,90013631184896,290013631184896,
     7290013631184896,57290013631184896,
     957290013631184896].each do |number|
      number.automorphic?(6).should be_true
    end
  end

  it "returns false if the number is not 6-automorphic and 6 is given as an argument" do
    [5, 97, 5000, 2827220126666].each do |number|
      number.automorphic?(6).should be_false
     end
  end

  it "returns true if the number is 7-automorphic and 7 is given as an argument" do
    (
    # http://www.research.att.com/~njas/sequences/A030993
    [3,43,143,7143,57143,857143,2857143,42857143,
     142857143,7142857143,57142857143,857142857143,
     2857142857143,42857142857143,142857142857143,
     7142857142857143,57142857142857143] +
    # http://www.research.att.com/~njas/sequences/A030991
    [5,75,375,4375,84375,984375,8984375,58984375,
     458984375,5458984375,45458984375,845458984375,
     2845458984375,22845458984375,322845458984375,
     2322845458984375,22322845458984375] +
    # http://www.research.att.com/~njas/sequences/A030992
    [8,68,768,2768,72768,872768,3872768,83872768,
     683872768,1683872768,11683872768,11683872768,
     11683872768,20011683872768,820011683872768,
     4820011683872768,34820011683872768,
     534820011683872768]
    ).each do |number|
      number.automorphic?(7).should be_true
    end
  end

  it "returns false if the number is not 7-automorphic and 7 is given as an argument" do
    [2,71,3263,71526675754123263].each do |number|
      number.automorphic?(7).should be_false
     end
  end

  it "returns true if the number is 8-automorphic and 8 is given as an argument" do
    # http://www.research.att.com/~njas/sequences/A030993
    [2,72,672,8672,88672,388672,3388672,23388672,
     223388672,223388672,10223388672,510223388672,
     7510223388672,67510223388672,967510223388672,
     7967510223388672,67967510223388672].each do |number|
      number.automorphic?(8).should be_true
     end
  end

  it "returns false if the number is not 8-automorphic and 8 is given as an argument" do
    [3,71,3263,71526675754123263].each do |number|
      number.automorphic?(8).should be_false
     end
  end

  it "returns true if the number is 9-automorphic and 9 is given as an argument" do
    # http://www.research.att.com/~njas/sequences/A030995
    ([5,25,625,5625,65625,765625,4765625,34765625,
     134765625,3134765625,13134765625,213134765625,
     2213134765625,62213134765625,362213134765625,
     7362213134765625,17362213134765625] +
     # http://www.research.att.com/~njas/sequences/A030994
    [4,64,264,3264,23264,123264,4123264,54123264,
     754123264,5754123264,75754123264,675754123264,
     6675754123264,26675754123264,526675754123264,
     1526675754123264,71526675754123264]).each do |number|
      number.automorphic?(9).should be_true
     end
  end

  it "returns false if the number is not 9-automorphic and 9 is given as an argument" do
    [6,65,200,3263,71526675754123263].each do |number|
      number.automorphic?(9).should be_false
     end
  end
end

