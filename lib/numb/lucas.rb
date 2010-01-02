class Integer
  def lucas?
    return true if (@@lucas ||= [2,1]).include?(self)
    while @@lucas.last < self
      @@lucas.push(@@lucas[-2] + @@lucas[-1])
    end
    @@lucas.last == self
  end
end
