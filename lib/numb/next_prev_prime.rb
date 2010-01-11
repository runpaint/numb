class Integer
  def next_prime
    p = succ
    p += 1 until p.prime?
    p
  end
  
  def prev_prime
    p = self - 1
    p -= 1 until p.prime?
    p
  end
end
