#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def everyone_can_divide?(n)
  (1..20).map do |m|
    true if n % m == 0 
  end.all? 
end

def increment
  (1..20).each { |x| x if !Prime.prime?(x) }.inject(:*)
end

def init
  b = 1
  x = increment
  while everyone_can_divide?(x) == false
    b += 1
    x = b * increment 
  end 
    a = x if everyone_can_divide?(x)
   p a
end


init() 