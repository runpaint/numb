# coding: utf-8
describe Integer, "#entringer" do
  # A008281
  @seq = [
          [1,                                                     ],
          [0,    1,                                               ],
          [0,    1,    1,                                         ],
          [0,    1,    2,    2,                                   ],
          [0,    2,    4,    5,    5,                             ],
          [0,    5,   10,   14,   16,   16,                       ],
          [0,   16,   32,   46,   56,   61,   61,                 ],
          [0,   61,  122,  178,  224,  256,  272,  272,           ],
          [0,  272,  544,  800, 1024, 1202, 1324, 1385, 1385,     ],    
          [0, 1385, 2770, 4094, 5296, 6320, 7120, 7664, 7936, 7936],
        ]

  @seq.each_with_index do |row, a|
    row.each_with_index do |n, b|
      it "returns #{n} for Entringer(#{a}, #{b})" do
        a.entringer(b).should == n
      end
    end
  end
end

