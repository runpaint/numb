# coding: utf-8
describe Integer, "#franel" do
  # A000172
  @seq = [1,2,10,56,346,2252,15184,104960,739162,5280932,
          38165260,278415920,2046924400,15148345760,
          112738423360,843126957056,6332299624282,
          47737325577620,361077477684436,2739270870994736,
          20836827035351596]

  @seq.each_with_index do |franel, n|
    it "returns #{franel} for #{n}" do
      n.franel.should == franel
    end
  end
end
