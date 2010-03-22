class Integer
  def catalan
    (2*self).factorial / (succ.factorial * factorial)
  end

  def catalan?
    in_sequence?(:catalan)
  end
end
