# prime?
def prime?(test_num)
	div_num=2

	while div_num < test_num  
	    if test_num % div_num == 0
	        div_num = 2
	        return false
	    elsif div_num == test_num-1
	        div_num = 2
	        return true
	    else
	       	div_num +=1                                            
	    end
	end
end

# test_num=7
# puts prime?(test_num)


#number of primes
def nbr_of_primes(prime_count_target)
    test_num = 3
    prime_count = 0
    prime_array=[]

	while prime_count < prime_count_target
		prime_array << test_num if prime?(test_num) 
		prime_count = prime_array.count
		test_num +=1
	end
return (prime_array)
end
prime_count_target = 13
puts "#{prime_count_target} Primes: #{nbr_of_primes(prime_count_target)}"
