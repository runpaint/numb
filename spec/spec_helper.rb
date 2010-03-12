# coding: utf-8
require 'rspec/core'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'numb'


class Seq
  include Enumerable
  attr_accessor :exclude, :include
  def initialize(*args)
    @include = args
    if @include.size == 1 and @include.first.is_a?(Enumerable)
      @include = @include.first
    end
    @exclude = []
  end

  def each
    @include.each do |e|
      next if @exclude.include?(e)
      yield e
    end
  end

  def invert
    return [] if @include.size < 2
    Seq.new(self.begin..self.end).tap{|s| s.exclude = @include }
  end

  def begin
    @include.respond_to?(:begin) ? @include.begin : @include.min
  end

  def end
    @include.respond_to?(:end) ? @include.end : @include.max
  end

  def sample(n=nil)
    return @include.sample(n) if @include.respond_to?(:sample)
    prng = Random.new
    (n||1).times.map do 
      r = prng.rand(@include) 
      redo if @exclude.include?(r)
      r
    end.tap{|a| return a.first unless n}
  end
end

class Array
  def first?
    size <= 1 ? first : self
  end

  def to_seq
    Seq.new *self
  end
end
