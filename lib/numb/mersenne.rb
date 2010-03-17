class Integer
  def mersenne?
    zero? or repunit?(2)
  end

  alias :fermat_lucas? :mersenne?
end
