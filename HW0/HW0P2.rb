#Danny Yu (dyu6@binghamton.edu)
#James Fagan (jfagan1@binghamton.edu)

def hello(name)
  return "Hello, #{name}"
end

#print hello("John")

def starts_with_consonant?(s)
  return false if s.length == 0
  return false if s =~ /\W/
  consonants = ["A","E","I","O","U"]
  return !consonants.include?(s.upcase[0])
end

#print starts_with_consonant?("v")
#print starts_with_consonant?("")
#print starts_with_consonant?("#foo")
#print starts_with_consonant?("orange")
#print starts_with_consonant?("Orange")
#print starts_with_consonant?("xrange")
#print starts_with_consonant?("AEIOU")

def binary_multiple_of_4?(s)
  return (s =~ /^[10]*00$/)? true : false
end

#print binary_multiple_of_4?("01100")
#print binary_multiple_of_4?("01000")
#print binary_multiple_of_4?("0000")
#print binary_multiple_of_4?("1111")