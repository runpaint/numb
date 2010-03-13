class Integer
  def iban?
    not words.include?('i')
  end
  alias :blind? :iban?
end
