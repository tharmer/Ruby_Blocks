class Flyer
  attr_reader :name, :email, :miles_flown
  
  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
  flyers = []

  1.upto(5) do |n|
    flyers << Flyer.new("Flyer #{n}", "flyer#{n}@example.com", n * 1000)
  end

  flyers.each do |flyer|
    promotions.each do |airline, promo|
      puts "#{flyer.name} could earn #{flyer.miles_flown * promo} miles by flying #{airline}"
   end
  end
  
  total = 0
  flyers.each do |f|
    total += f.miles_flown
  end
  puts
  puts "Total miles flown: #{total}"
  puts
  promotions.each {|a, b| puts "Earn #{b}x miles by fling with #{a}!"}
  
  #desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 } 
  #desserts.each {|a,b| puts "$#{b*2} for a cup or #{a}."}
  
  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
  
  puts
  

end
