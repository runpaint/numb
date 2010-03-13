class Integer
  def properties
    methods.grep(/\?/).
            map{|m| method(m)}.
            uniq. # Filter out aliases
            select{|m| m.arity.zero? and m[]}.
            map{|m| m.name[0..-2]}. # Strip question mark
            map(&:to_sym).
            sort
  end
end
