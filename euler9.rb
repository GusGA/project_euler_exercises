#Euclid's formula[1] is a fundamental formula for generating Pythagorean triples 
#given an arbitrary pair of positive integers m and n with m > n. 
#The formula states that the integers
#a = m^2 - n^2 , b = 2mn , c = m^2 + n^2 

(1..100).each do |m|
  (1..100).each do |n|
    if m > n
      b = 2*m*n
      a = m**2 - n**2
      c = m**2 + n**2
      if a + b + c == 1000
        p a*b*c
      end
    end 
  end
end


