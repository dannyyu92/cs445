#Danny Yu (dyu6@binghamton.edu)
#James Fagan (jfagan1@binghamton.edu)

def sum(int_array)
  return 0 if int_array.size == 0
  return int_array.inject(&:+)
end

#puts sum([1,2,3])
#puts sum([])

def max_2_sum(int_array)
  return 0 if int_array.size == 0
  return int_array.first if int_array.size == 1
  return int_array.sort!.last(2).inject(&:+)
end

#print max_2_sum([100])

def sum_to_n?(int_array,n)
  return false if int_array.size == 0
  return int_array.combination(2).any? { |a,b| a+b == n }
end

#print sum_to_n?([],10)
