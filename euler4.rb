#Find the largest palindrome made from the product of two 3-digit numbers.

def init
  respuesta = [] 
  (100..999).each do |n|
    (100..999).each do |m|
      a = n * m
      if a.to_s == a.to_s.reverse
        respuesta << a
      end 
    end
  end
  p respuesta.max
end

init()