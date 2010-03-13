class Integer
  def eban?
    not words.include?('e')
  end
end
