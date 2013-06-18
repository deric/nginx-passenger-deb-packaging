#!/bin/ruby
unless ARGV.size == 1
   puts "Usage: ruby gem_path.rb {gem name}"
   exit 1
end

spec = Gem::Specification.find_by_name(ARGV[0])
gem_root = spec.gem_dir
puts gem_root
