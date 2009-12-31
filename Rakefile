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
    gem.rdoc_options = ['-x', 'lib/numb/ruby1.9.rb']
    gem.add_dependency "gemcutter", ">= 0.1.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec
