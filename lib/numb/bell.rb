class Integer
  def bell?
    triangle = [[1]]
    r = 1
    loop do
      row = [triangle[r - 1][r - 1]]
      (1..r).each do |c|
        row << triangle[r - 1][c - 1] + row[c - 1]
      end
      triangle[r] = row
      return false if row.first > self
      return true if row.first == self
      r += 1
    end
  end
end
