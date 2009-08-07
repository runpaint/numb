class Integer
  def square_free?
    positive_divisors.reject{|d| d==1}.none? {|d| d.square?}
  end
end
