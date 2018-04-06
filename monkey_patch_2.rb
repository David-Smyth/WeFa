a = [1,2,3]

puts 'Before monkey patch:'
begin
  puts "#{a.multiply}"
rescue
  puts "oops: #{$!}"
end

$LOAD_PATH << '.'
require 'lib/core_extensions/array/math'

puts 'After monkey patch:'
puts "#{a.multiply}"
