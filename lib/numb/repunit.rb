class Integer
  def repunit?(base)
    !!to_s(base).match(/^1+$/)
  end

  def repunit
    (10 ** self) / 9 
  end
end
