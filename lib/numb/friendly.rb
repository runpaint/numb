class Integer
  def friendly?(*others)
    raise ArgumentError unless others.size >= 1 && others.uniq.size == others.size
    abundancy = self.abundancy
    others.all? {|o| o.abundancy == abundancy}
  end
end

    
