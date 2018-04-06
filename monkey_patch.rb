a = [1,2,3]

puts "Before monkey patch:"
begin
  puts "#{a.multiply}"
rescue
  puts "oops: #{$!}"
end

class Array
  def multiply
    result = 1
    each do |e|
      result *= e if e.is_a? Numeric
    end
    result
  end
end

puts "After monkey patch:"
puts "#{a.multiply}"
