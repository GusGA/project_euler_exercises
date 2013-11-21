#What is the largest prime factor of the number 600851475143 ?
@number =  ARGV.first.to_i

def divisores number 
  a = []
  b = 1
  x = 2
  while b < number 
    if number % x == 0 &&  primo?(x)
      a << x
      b *= x
    end
    x += 1
  end
  a.max
end
  
def primo? number
  a = 0
  b = []
  (1..number).each  do |n|
    if number % n == 0
      b << n
      a += 1
    end
  end
  true if a == 2
end

def init
  if @number == 1
    p "no es factorizable"
  else
    if @number == 2 || @number == 3
      p @number
    else
      p divisores(@number)
    end
  end
end

init()