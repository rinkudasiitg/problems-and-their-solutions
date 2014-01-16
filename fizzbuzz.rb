1.upto(STDIN.gets.to_i) do |num|
break if num > 10**7 # num should be less than 10^7
output = nil
output = output.to_s + 'Fizz' if num % 3 == 0
output = output.to_s + 'Buzz' if num % 5 == 0
puts output || num
end
