require "prime"
p (1...2000000).map { |n| n if Prime.prime?(n) }.compact.inject(:+)
