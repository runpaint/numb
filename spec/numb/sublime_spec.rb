describe Integer, "#sublime?" do
  #  A081357
  SUBLIME = [12,
     6086555670238378989670371734243169622657830773351885970528324860512791691264]

  SUBLIME.first(1).each do |n|
    it "should return true for sublime number #{n}" do
      n.should be_sublime
    end
  end

  (1..100).each do |n|
    next if SUBLIME.include?(n)
    it "should return false for non-sublime number #{n}" do
      n.should_not be_sublime
    end
  end
end
