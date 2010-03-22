# coding: utf-8
describe Integer, "#stirling" do
  @seq = [
          [    1                                                       ],
          [   -1,         1                                            ],
          [    2,        -3,      1                                    ],
          [   -6,        11,     -6,      1                            ],
          [   24,       -50,     35,    -10,     1                     ],
          [ -120,       274,   -225,     85,   -15,     1              ],
          [  720,     -1764,   1624,   -735,   175,   -21,   1         ],
          [-5040,     13068, -13132,   6769, -1960,   322, -28,   1    ],
          [40320,   -109584, 118124, -67284, 22449, -4536, 546, -36, 1 ],
          [-362880, 1026576                                            ]
  ]

  @seq.to_enum.with_index(1).each do |row, n|
    row.to_enum.with_index(1).each do |s, m|
      it "returns #{s} as the #{n}#{n.ordinal} Stirling number of the 1st kind (m = #{m})" do
        n.stirling(m).should == s
      end
    end
  end
end
