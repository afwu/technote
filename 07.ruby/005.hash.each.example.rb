

a = Hash.new

a[23] = '23'
a[24] = '2424'

a.each_with_index do |p, index|
  puts "\n p: #{p}, pclass: #{p.class}\n"
  puts "index: #{index}\n"
end

# p: [23, "23"], pclass: Array
#index: 0
#
# p: [24, "2424"], pclass: Array
#index: 1

puts "--------------------\n"

a.each do |p, index|
  puts "\n p: #{p}\n"
  puts "index: #{index}\n"
end

# p: 23
#index: 23
#
# p: 24
#index: 2424

