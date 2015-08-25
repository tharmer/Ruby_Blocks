scores = [83, 71, 92, 64, 98, 87, 75, 69]

high_scores = scores.select{|s|  s > 80 }
puts high_scores

low_scores = scores.reject{|s|  s > 80 }
puts low_scores

puts scores.any?{|s|  s < 70 }

puts scores.detect{|s|  s < 70 }
