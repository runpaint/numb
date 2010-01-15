class Integer
  def factorial
    return 1 if zero?
    (1..self).reduce(:*)
  end
end
