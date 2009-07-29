require 'pp'

class Equation
  @@solution = {}
  def self.cache
    @@solution
  end

  OP = [:+,:-,:*,:/,:**]
  
  def self.permutation(digits,operators=OP)
    return digits if digits.size == 1
    return [] if digits.size == 0
    ops = (operators * (digits.size-1)).permutation(digits.size-1).to_a
    ops.map do |op_perm|
      args = digits.zip(op_perm).flatten(1).compact
      args.map! do |a|
        if a.is_a?(Array)
          if a.empty?
            nil
          elsif a.size == 1
            a.first
          else
            Equation.permutation(a,operators).flatten(1)
          end
        else
          a
        end
      end.compact
      perms = []
      loop do
        buffer = []
        args.each do |arg|
          if arg.is_a?(Array)
            buffer << arg.pop
          else
            buffer << arg
          end
        end
        perms << Equation.new(*buffer)
        break if args.none?{|a| a.is_a?(Array)}
        break if args.select{|a| a.is_a?(Array)}.all?{|a| a.empty?}
      end
      perms
    end.flatten
  end

  attr_reader :a, :operator, :b
  def initialize(*args)
    @a = args.shift
    @operator = args.shift
    if args.size > 1
      @b = Equation.new(*args)
    else
      @b = args.shift
    end
    [@a,@b].map!{|var| var.is_a?(String) ? var.to_i : var}
    normalize!
  end
  
  def solution
    return @@solution[hash] if @@solution.key?(hash)
    @@solution[hash] = a.to_i.send(operator, b.to_i) rescue nil
  end
  alias :to_i :solution

  def normalize!
    if [:+,:*].include?(operator) and [@a,@b].all?{|a| a.respond_to?(:<=>)}
     @a,@b = [@a,@b].minmax
    end 
  end

  def hash
    [a.to_i, operator, b.to_i].join.hash
  end

  def eql?(other)
    self.hash == other.hash
  end

  def operators
    to_a.flatten.select{|e| e.is_a?(Symbol)}
  end

  def to_a
    [a,operator,b].map do |var|
      var.is_a?(Equation) ? var.to_a : var
    end
  end

  def to_s
    [a,operator,b].map do |var|
      var.is_a?(Equation) ? "(#{var})" : var.to_s
    end.join(' ')
  end
end

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

end

class Integer
  
  OP = [:**, :*, :/, :+, :-]
  
  attr_reader :friedman_equation 
  
  def friedman?
    
    require 'threadify'
    @equations = []
    # Assume digits = [1,2,3,4]
    digits.permutation.to_a.uniq.threadify do |perm|
      # [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4], [1, 3, 4, 2], [1, 4, 2, 3],
      # [1, 4, 3, 2], [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4], [2, 3, 4, 1],
      # [2, 4, 1, 3], [2, 4, 3, 1], [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4],
      # [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1], [4, 1, 2, 3], [4, 1, 3, 2],
      # [4, 2, 1, 3], [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]

      # For this permutation we need a further permutation for concatenated
      # digits. For example, if perm = [1,2,3,4]...
      perm.chunk.map{|c| c.map{|e| e.join.to_i}}.each do |concat_perm|
        # concat_perm = [[1, 2, 3, 4], [1, 234], [12, 34], [123, 4], 
        #                [1, 2, 34], [1, 23, 4], [12, 3, 4], [1234]]

        # Skip the trivial permutation of [1234]
        next if concat_perm == [self]
        
        # Ignore zero as an individual element as it has no bearing on the
        # result
        concat_perm -= [0]    
        
        # Of each of these permutations we now need to consider how the terms
        # would be grouped if parenthesised. For example, if chunk == [1,2,34]
        concat_perm.chunk.map do |c| 
          c.map{|e| e.is_a?(Array) && e.size == 1 ? e.first : e}
        end.uniq.each do |chunk|
          # chunk = [[[1], [2], [34]], [[1], [2, 34]], 
          #          [[1, 2], [34]], [[1, 2, 34]]]
          # TODO: Needed?
          next if chunk.size == 1
          Equation.permutation(chunk).each do |equation|
            @equations << equation
          end
        end
      end
    end
    # Sort the equations by number of operators so we try the simplest (least
    # operators) first. This takes advantage of the fact that few Friedman
    # numbers use the maximumn number of operators, so we can usually find the
    # correct equation before we have to solve the complex, expensive
    # equations

    @equations.uniq!.sort_by!{ 
      |e| e.operators.size || e.operators.include?(:**) 
    }
    
    result = @equations.threadify do |equation|
      if equation.solution == self
        @friedman_equation = equation  
        threadify!(:solved)
      end
    end
    result == :solved ? true : false
  end

end
