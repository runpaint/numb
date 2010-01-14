class Integer
  def congruum?
    # Fibonacci proved that h|24
    # Fermat’s right triangle theorem shows h is not square
    return false unless divides?(24) and not square?
    h = self
    (1..Math.sqrt(h)).any? do |n|
      (n.succ..Math.sqrt(h)).any? do |m|
        h == (4 * m * n) * (m**2 - n**2)
      end
    end
  end
end
