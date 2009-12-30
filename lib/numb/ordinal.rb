class Integer
  def ordinal
    case to_s
      when /^1\d$/ then 'th'
      when /1$/    then 'st'
      when /2$/    then 'nd'
      when /3$/    then 'rd'
      else              'th'
    end
  end
end
