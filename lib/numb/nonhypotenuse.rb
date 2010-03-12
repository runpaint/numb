class Integer
  def nonhypotenuse?
    # Shanks, Daniel Non-hypotenuse numbers. Fibonacci Quart. 13 (1975), no.
    # 4, 319-321.
    prime_factors.none?{|f| (f - 1).divides?(4) }
  end
end
