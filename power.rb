def power(base, exponent)
	result = 1
	for i in 0...exponent
		result = result * base
	end
	return result
end

def factorial(num)
	result = 1
	for i in 1..num
		result = result * i
	end
	return result
end

def uniques(a)
	result = Array.new 
	a.each do |item|
		if result.include? item
		else
			result.push(item)
		end
	end
	return result
end

def combinations(a, a2)
	result = Array.new	
	a.each do |prefix|
		a2.each do |suffix|
			result.push(prefix + suffix)
		end
	end
	return result
end

def is_prime?(num)
	(2..Math.sqrt(num)).each { |i| return false if num % i == 0}
	true
end

def overlap(rect1, rect2)
  x_min = [rect1[0][0], rect2[0][0]].max
  x_max = [rect1[1][0], rect2[1][0]].min

  y_min = [rect1[0][1], rect2[0][1]].max
  y_max = [rect1[1][1], rect2[1][1]].min
  
  if ((x_max <= x_min) || (y_max <= y_min))
	return false
  else
	return true
  end

end

ARGV.each do |x|
	x	
end
a = ARGV[0].to_i
b = ARGV[1].to_i
puts power(a,b)
puts factorial(b)
print uniques([1,5,'frog',2,1,3,'frog'])
puts ''
print combinations(['on','in'],['to','rope'])
puts ''
puts is_prime?(7)
puts is_prime?(14)
puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )
