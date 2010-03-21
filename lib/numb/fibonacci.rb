class Integer
  def fibonacci?
    return true if self == 1
    # Posamentier, Alfred; Lehmann, Ingmar (2007). The (Fabulous) FIBONACCI
    # Numbers. Prometheus Books. pp. 305
    [4, -4].map{|x| (5 * (self**2)) + x}.any? &:square?
  end
end
