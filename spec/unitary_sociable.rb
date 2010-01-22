describe Integer, "#unitary_sociable?" do
  # A000173
  @seq = {
    3  => [30],
    4  => [263820, 395730, 172459210, 209524210, 384121920, 1799281330, 
           2069510520, 2514290520],
    5  => [1482],
    6  => [698130, 341354790, 530946330, 582129630],
    14 => [2418, 24180, 35238],
    65 => [473298],
    25 => [763620],
    39 => [2212026],
    26 => [2233554],
    10 => [525150234, 5251502340],
    12 => [3344596854]
  }

  (3..5).map{|_| [_, @seq[_]]}.each do |t, members|
    members.sample(1).each do |n|
      it "should return true for #{t}-unitary-sociable number #{n}" do
        n.unitary_sociable?(t).should be_true
      end

      m = n - 2
      it "should return false for non-#{t}-unitary-sociable number #{m}" do
        m.unitary_sociable?(t).should be_false
      end
    end
  end
end
