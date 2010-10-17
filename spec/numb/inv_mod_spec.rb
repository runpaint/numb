# coding: utf-8
describe Integer, "#inv_mod" do
  # A102057
          # -----b------>                               # |  
  @seq =  [[ 1],                                        # |
           [ 1,  2],                                    # m
           [ 1,nil,  3],                                # |
           [ 1,  3,  2,  4],                            # |
           [ 1,nil,nil,nil,  5],                        # V
           [ 1,  4,  5,  2,  3,  6],
           [ 1,nil,  3,nil,  5,nil,  7],
           [ 1,  5,nil,  7,  2,nil,  4,  8],
           [ 1,nil,  7,nil,nil,nil,  3,nil,  9],
           [ 1,  6,  4,  3,  9,  2,  8,  7,  5, 10],
           [ 1,nil,nil,nil,  5,nil,  7,nil,nil,nil, 11],
           [ 1,  7,  9, 10,  8, 11,  2,  5,  3,  4,  6, 12],  
           [ 1,nil,  5,nil,  3,nil,nil,nil, 11,nil,  9,nil, 13],  
           [ 1,  8,nil,  4,nil,nil, 13]]

  @seq.each.with_index(2) do |ms, m|
    ms.each.with_index(1) do |inv, b|
      it "returns #{inv} for #{b}.inv_mod(#{m})" do
        b.inv_mod(m).should == inv
      end
    end
  end
end
