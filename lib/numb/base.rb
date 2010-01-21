class Integer
  BASE = {
          binary:          2, ternary:       3, quaternary:     4,
          quinary:         5, senary:        6, septenary:      7, 
          octal:           8, nonary:        9, decimal:       10, 
          undecimal:      11, duodecimal:   12, tridecimal:    13,
          tetradecimal:   14, pentadecimal: 15, hexadecimal:   16,
          septendecimal:  17, decennoctal:  18, decennoval:    19,
          vigesimal:      20, trigesimal:   30, quadragesimal: 40,
          quinquagesimal: 50, sexagesimal:  60, septuagesimal: 70,
          octagesimal:    80, nonagesimal:  90, centesimal:   100,
          millesimal:  1_000
  }

  def base(base=nil)
    return Hash[BASE.values.map{|b| [b, base(b)]}] unless base
    return '0' if zero?
    base = case base
             when Numeric        then base.to_int
             when String, Symbol then BASE[base.downcase.to_sym]
             else                     nil
           end
    raise ArgumentError unless base and base > 1
    begin
      to_s(base)
    rescue ArgumentError
      chars = [*(0..9)] + [*('a'..'z')]
      (base - chars.size).times { chars.push(chars.last.succ) }
      n, digits = self, []
      until n.zero?
        n, remainder = n.divmod(base)
        digits << chars[remainder]
      end
      digits.reverse.join
    end
  end
end
