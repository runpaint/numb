# coding: utf-8
require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "numb"
    gem.summary = %Q{Experiments in number theory with new predicate methods for Integer.}
    gem.email = "runrun@runpaint.org"
    gem.homepage = "http://github.com/runpaint/numb"
    gem.authors = ["Run Paint Run Run"]
    gem.add_dependency "gemcutter", ">= 0.1.0"
    gem.required_ruby_version = '>= 1.9'
    gem.has_rdoc = 'yard'
    gem.rdoc_options = []
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new do |spec|
  spec.ruby_opts = '-r./spec/spec_helper'
end

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end

task :irb do 
  exec("irb -r./lib/numb")
end
task :default => :spec
