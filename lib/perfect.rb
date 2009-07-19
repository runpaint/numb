class Integer
  def perfect?
    self.to_s =~ /(6|8)$/ ? true : false
  end
end
