class Integer
  def odious?
    return false unless positive?
    to_s(2).count('1').odd?
  end
end

