class Integer
  def zerofree?
    not to_s.include?('0')
  end
end
