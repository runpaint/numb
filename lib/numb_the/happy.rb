class Integer
  def happy?
    return false unless self > 0
    n = self
    sad = '4 16 37 58 89 145 42 20'
    seq = ""
    loop do
      n = n.digits.map{|d| d ** 2}.reduce(:+)
      seq << n.to_s  << ' '
      return true if n == 1
      return false if seq.include? sad   
    end
  end
end
