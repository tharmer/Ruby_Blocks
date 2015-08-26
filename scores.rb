scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores_doubled = scores.map { |s| s * 2 }
p scores_doubled
puts
p scores.reduce(:+)
puts
evens, odds = scores.partition { |s| s % 2 == 0 }
p evens
p odds
puts 
evens, odds = scores.partition { |score| score.even? }
puts "Evens:"
p evens
puts "Odds:"
p odds

#high_scores = scores.select{|s|  s > 80 }
#puts high_scores
#low_scores = scores.reject{|s|  s > 80 }
#puts low_scores
#puts scores.any?{|s|  s < 70 }
#puts scores.detect{|s|  s < 70 }
