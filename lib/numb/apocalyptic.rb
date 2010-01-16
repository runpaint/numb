class Integer
  def apocalyptic?
    (2**self).to_s.include?('666')
  end
end
