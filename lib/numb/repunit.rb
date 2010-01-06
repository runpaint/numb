class Integer
  def repunit?(base)
    !!to_s(base).match(/^1+$/)
  end
end
