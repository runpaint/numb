class Integer
  def catalan
    (2*self).factorial / (succ.factorial * factorial)
  end

  def catalan?
    n = -1
    loop do
      return true if (cat = (n += 1).catalan) == self
      return false if cat > self
    end
  end
end
