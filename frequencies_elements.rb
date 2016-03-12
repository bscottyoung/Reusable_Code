def num_repeats(arg)

#process argument into an array for method.  Assumes arg is a string
if arg.is_a? String
    (arg.include? " ") ?  (arg=arg.downcase.split(" ")) : (arg=arg.downcase.split(""))
    puts "arg = #{arg}"
end

#create frequency hash
item_frequency_hash = Hash.new(0)        #hash starts with {} value
arg.each do |x|
  item_frequency_hash[x] += 1            #increments each 'value' by 1  
end                                      #t=returns hash{k=item, v=frequency} for all k

#create frequency senstive hashes
min_value = 0                   #to set repeating values = 0 
max_frequency_hash = Hash.new
max_frequency_value = item_frequency_hash.values.max     #highest frequency
# puts "max_frequecy_value = #{item_frequency_hash.values.max}"  

#populates hash of k,v having the highest frequence:
max_frequency_value == 1 ? (return min_value)  : item_frequency_hash.each{|k,v| max_frequency_hash[k]=v if v == max_frequency_value }

#returns what is needed:
return max_frequency_hash.count
	puts "Highest frequency items hash: #{max_frequency_hash}"
	puts "number of k,v pairs that met max: #{max_frequency_hash.count}"
	puts "keys having max value: #{max_frequency_hash.keys}"
end


puts num_repeats([1,2,3,2,5,1])

puts ""

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts ""
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts ""
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts ""
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts ""
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
