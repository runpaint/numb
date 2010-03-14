class Integer
  def primitive_roots
    return [] unless primitive_root?
    (0..self).select{|n| primitive_root?(n)}
  end
end
