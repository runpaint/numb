class Integer
  def unhappy?
    not happy?
  end

  alias :sad? :unhappy?
end
