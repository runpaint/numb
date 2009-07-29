require_relative './lib/perfect'
require 'pp'

class Array
  def chunk
    pool = (1..size).map{|n| [n] * (size/n).ceil}.flatten
    (1..size).map do |num_chunks|
      case num_chunks
        when 1 then [[1] * size]
        when size then [[size]]
        else 
          pool.permutation(num_chunks).to_a.uniq.select{|p|p.reduce(:+) == size}
      end.map do |t|
        copy = dup
        t.map {|count| copy.shift(count)}
      end
    end.flatten(1)
  end

  def bracket_chunks 
    chunk.map do |c|
      c.each do |e|
        if e.is_a?(Array)
          if e.size == 1
            e[0] = "(#{e[0]})"
          else
            e[0] = "(#{e[0]}"
            e[-1] = "#{e[-1]})"
          end
        else
          e = "(#{e})"
        end
      end
      c
    end
  end
end
OP = [:concat, :**, :*, :/, :+, :-]

def friedman?
  digits = ARGV[0].split(//).map{|d| d.to_i}
  digits.permutation.to_a.uniq.map do |perm|
    perms = perm.size.odd? ? [perm, [0, *perm]] : [perm]
    perms.map do |perm2|
      chunks = perm2.each_slice(2).map do |chunk|
        OP.map{|op| chunk.reduce(op) rescue nil}.compact
      end
      raise "Too many chunks" if chunks.size > 2
      return true if chunks.first.any? do |d| 
        OP.any? do |o| 
          chunks.last.any? {|d2| o != :concat && d.send(o,d2) == ARGV[0].to_i rescue nil }
        end
      end 
    end
  end
  false
end

def friedman2?
  digits = ARGV[0].split(//).map{|d| d.to_i}
  digits.permutation.to_a.uniq.each do |perm|
    puts "#{perm}"
    #perm.chunk.map{|a| a.map{|b| b.join}}.each do |set|  
    perm.chunk.each do |chunk|  
      puts "\tchunk:#{ chunk.inspect }"
      set = chunk.map{|a| a.join}
      puts "\tset:#{ set.inspect }"
      next if set == [ARGV[0]]
      [set, chunk].each do |set_or_chunk|
        set_or_chunk.flatten.bracket_chunks.each do |bchunk|
          bchunk.flatten!
          puts "\t#{set_or_chunk} brackets to #{bchunk.inspect}"
          ops = OP.reject{|o|o==:concat}.permutation(bchunk.size-1).to_a
          ops.each do |op_perm|
            equation = bchunk.zip(op_perm).flatten.compact.join(' ')
            #p equation
            return true if (answer = eval(equation) rescue nil) == ARGV[0].to_i
            #puts "#{equation} => #{answer}"
          end
        end
      end
    end
  end
 false
end
puts friedman2?
