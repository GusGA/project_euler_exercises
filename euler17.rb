require 'numbers_and_words'

I18n.enforce_available_locales = false

all_numbers = I18n.with_locale(:en) { (1..1000).to_a.map{ |n| n.to_words hundreds_with_union: true} }

p all_numbers.map { |n| n.gsub(" ","").gsub("-","").size }.inject(:+)
