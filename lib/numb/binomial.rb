class Integer
  def binomial?(exp=4)
    x = self
    return true if (0..2).include? x
    (2..exp).each do |n|
      (1...x).each do |a|
        an = a**n
        sign, *terms = an > x ? [:-, an, x] : [:+, x, an]
        b = (terms.reduce(:-))**(1.0/n.to_f)
        return true if b.integer? and x == an.send(sign, b**n)
      end
    end
    false
  end
end
