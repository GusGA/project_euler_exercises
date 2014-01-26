require "prime"
two_million = 2000000
@arry = []
(1...two_million).each { |n| @arry << n if Prime.prime?(n) }
p @arry.inject(:+)