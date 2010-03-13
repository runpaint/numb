class Integer
  def aban?
    not words.sub(/and/,'').include?('a')
  end
end
