#!/usr/bin/env ruby

require 'zlib'

if ARGV.size != 1 || ! File.file?(ARGV[0])
  puts "USAGE: #{$0} FILE"
  exit -1
end

puts Zlib::crc32(File.read(ARGV[0]))
