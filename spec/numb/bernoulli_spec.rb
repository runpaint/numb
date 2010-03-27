# coding: utf-8
describe Integer, "#bernoulli" do
  # A000367 
  @numerators = [1, 1, -1, 1, -1, 5, -691, 7, -3617, 43867, -174611, 854513,
                 -236364091, 8553103, -23749461029, 8615841276005, -7709321041217,
                 2577687858367, -26315271553053477373, 2929993913841559,
                 -261082718496449122051]
  # A002445
  @denominators = [1, 6, 30, 42, 30, 66, 2730, 6, 510, 798, 330, 138, 2730, 6,
                   870, 14322, 510, 6, 1919190, 6, 13530, 1806, 690, 282, 46410, 
                   66, 1590, 798, 870, 354, 56786730, 6, 510, 64722, 30, 4686, 
                   140100870, 6, 30, 3318, 230010]

  @seq = @numerators.zip(@denominators).map{|n,d| Rational(n,d)}
  @seq = ([0.to_r] * @numerators.size).zip(@seq).flatten
  @seq.shift 
  @seq[1] = -2.reciprocal
  @seq.each_with_index do |r, n| 
    it "returns #{r} for #{n}" do
      n.bernoulli.should == r
    end
  end
end
