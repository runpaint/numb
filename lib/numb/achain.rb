# coding: utf-8
module AChain
  def self.sequence(*terms)
    chain, perms = ([1] + terms), {}
    possible =->(term) do
      return true if perms.values.include?(term)
      options = chain.uniq.select{|perm| perm < term}
      (options * 2).permutation(2).to_a.uniq.any? do |perm|
        (perms[perm] ||= perm.reduce(:+)) == term
      end
    end
    loop do
      catch(:restart) do
        (chain = chain.sort.reverse).each_with_index do |term, i|
          return chain.sort.uniq if term == 1
          next if possible[term]
          chain << if term >= (chain[i.succ] * 3)
            term.even? ? term / 2 : term - 1
          else
            term - chain[i.succ]
          end
          throw :restart
        end
      end
    end
  end

  def self.factor(n)
    build_tree = ->(n) do
      return if n == 1
      p = n.prime_factors.first
      q = n/p
      q, p = p - 1, 1 if p == n
      {left: q, value: n, right: p}.tap do |node|
        node[:right] = build_tree[p] if p > 1
        node[:left] = build_tree[q] if q > 1
      end
    end

    current, chain = (t = build_tree[root = n]), [x = 1]

    make_chain =->(node) do
      [:right, :left].each do |dir|
        if node[dir] == 2 then chain << x *= 2
        elsif node[dir] and node[dir] != 1
          x = make_chain[node[dir]]
        end
        node[:x] = x if dir == :right
      end

      if node[:value] == root and node[:right] == 1
        if r = node[:right]
          x += r.respond_to?(:fetch) ? r[:x] || 0 : r
        end
        chain << x
      elsif node[:value] != root and node[:right] == 1
        x += node[:x] if node.respond_to?(:fetch) and node[:x]
        node.delete(:x)
        chain << x
      end
      x
    end
    make_chain[t]
    chain
  end

  def self.window_brute(n)
    (1..n.to_s(2).count('1')).map {|w| window(n,w)}.min_by(&:size)
  end

  def self.window(n,w=3)
    n = [*n.base(2).chars].map(&:to_i)
    windows, zeroes = [[]], []
    n.each do |bit|
      if bit.zero? then zeroes << bit
      elsif (zeroes.size + 1 + windows.last.size) > w
        windows << zeroes.pop(zeroes.size) << [1]
      else windows[-1] += zeroes.pop(zeroes.size) << 1
      end
    end
    windows << zeroes unless zeroes.empty?
    windows.map!{|w| [w, w.join.to_i(2).to_i]}

    x = windows.first.last
    self.sequence(*windows.map(&:last).reject(&:zero?).uniq).tap do |chain|
      windows[1..-1].each do |bits, value|
        bits.each {|bit| chain << x *= 2}
        chain << x += value
      end
    end.sort.uniq
  end
end

class Integer
  def achain
    self == 1 ? [1] 
              : [AChain.factor(self), AChain.window_brute(self)].min_by(&:size)
  end
end
