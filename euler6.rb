#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sum_square = (1..100).inject { |s, n| s + (n**2) }

square_sum = (1..100).inject(:+)**2

p square_sum - sum_square