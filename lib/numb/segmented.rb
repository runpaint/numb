# coding: utf-8
class Integer
  def segmented
    return self if self <= 2
    this = ((n = self)-1).segmented.succ

    sum = Hash.new{|h, k| h[k] = k.map(&:segmented).reduce(:+) }
    
    priors_sum = ->(target) do
      (n - 2).downto(1).any? do |start|
        (start.succ..(n-1)).any? do |stop|
          break if (s = sum[ start..stop ]) > target
          s == target
        end
      end
    end

    this += 1 while priors_sum[ this ]
    this
  end

  memoize :segmented

  def segmented?
    in_sequence?(seq: :segmented)
  end

  alias :prime_number_of_measurement? :segmented?
end
