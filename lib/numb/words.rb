class Integer
  WORDS = {
    0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',   4 => 'four',
    5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
    10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 
    14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 
    18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 
    40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 
    80 => 'eighty', 90 => 'ninety'
  }

  def words
    return WORDS[0] if zero?
    str = (place = places.to_a).map do |name, v|
      next if v.zero?
      case name
        when :units then WORDS[v]
        when :tens
          units = place.pop.last
          v == 1 ? WORDS[10 + units] 
                 : WORDS[10 * v] + (units.zero? ? '' : ' ' + units.words)
        else
          v.words + ' ' + name.to_s[0..-2]
      end
    end.compact.join(', ')
    str.include?(',') ? str.sub(/,([^,]+)$/,' and\1') : str
  end

  def places
    n = self
    {trillions: 10e11, billions: 10e8, millions: 10e5, thousands: 10e2, 
     hundreds: 10e1, tens: 10, units: 1}.map do |k,v| 
      v, n = n.divmod(v)
      [k, v]
     end.tap{|a| return Hash[a] }
  end
end
