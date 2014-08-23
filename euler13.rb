require 'open-uri'

url  = "https://gist.githubusercontent.com/GusGA/0d062047ee2376413e48/raw/e3b3e9f6c95633296dd9bfeebfd435469b6eead4/numbers_euler_13.csv"
doc = open(url).read.split("\n").map!{ |n| n.to_i }
n = doc.inject(:+).to_s
p n[0,10]
