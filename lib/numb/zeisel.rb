class Integer
  def zeisel?
    return false unless square_free? and (p=prime_factors.sort.uniq).size >= 3
    p.unshift(1)
    (1..p.max).any? do |a|
      b = p[1] - (a*p[0])
      p.each_with_index.all? do |n, i|
        next true if i.zero?
        n == (a*p[i-1]) + b
      end
    end
  end
end 
