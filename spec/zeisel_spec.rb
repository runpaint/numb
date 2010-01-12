describe Integer, "#zeisel?" do
  # A051015
  ZEISEL = [105,1419,1729,1885,4505,5719,15387,24211,25085,
            27559,31929,54205,59081,114985,207177,208681,
            233569,287979,294409,336611,353977,448585,507579,
            721907,982513,1012121,1073305,1242709,1485609,
            2089257,2263811,2953711,3077705,3506371,3655861,
            3973085,4648261,5069629,6173179,6253085,6985249,
            7355239,7355671,7558219,8011459,8413179,8444431,
            8712985,9271805,9773731,15411785,18175361,
            18578113,19827641,20771801,23691481,26000605,
            26758057]

  # 721907 appears to be in this sequence by error...
  (ZEISEL - [721907]).each do |n|
    it "should return true for Zeisel number #{n}" do
      n.should be_zeisel
    end
  end
end
