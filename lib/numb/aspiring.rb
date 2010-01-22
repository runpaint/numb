class Integer
  def aspiring?(max_iterations=10)
    return false if perfect? 
    (last = aliquot_sequence(max_iterations).last).to_f.finite? ? 
      last.perfect? : 
      false
  end
end
