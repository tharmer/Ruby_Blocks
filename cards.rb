cards = ["Jack", "Queen", "King", "Ace", "Joker"]
scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

cards.reverse_each {|c| puts "#{c.upcase} - #{c.length}"}
puts
scores.each {|a, b| puts "#{a} scored a #{b}!"}

  