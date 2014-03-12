#Finding all elements(which are integer) in an array whose sum is equals to the element exists within the array

str = gets.chomp
arr = str.split(',').map { |x| x.to_i }

result = []
(2..arr.count-1).to_a.each do |len|
  arr.combination(len).to_a.each do |comb|
    sum = comb.inject(:+)
    if arr.include? sum
      result << (comb << sum)
    end
  end
end
puts result.join(",")
