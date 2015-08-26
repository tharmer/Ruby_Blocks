class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)


distance = flyers.map { |f| f.miles_flown * 1.6 }
p distance
p distance.reduce(:+)
              
total_miles_flown = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }
puts "Total miles flown: #{total_miles_flown}"

total_kms_flown = flyers.map { |flyer| flyer.miles_flown * 1.6 }.reduce(0, :+)
puts "Total km flown: #{total_kms_flown}"

bronze_total = flyers.select { |f| f.status == :bronze }.map { |f| f.miles_flown * 1.6 }.reduce(:+)
puts bronze_total

max_flyer = flyers.max_by {|f| f.miles_flown}
puts max_flyer
min_flyer = flyers.min_by {|f| f.miles_flown}
puts min_flyer
#platinum, coach = flyers.partition {|f| f.status == :platinum}
#puts "Platinum:"
#puts platinum
#puts
#puts "Coach:"
#puts coach
#puts 
#nametag = flyers.map { |f| "#{f.name} (#{f.status.upcase})" }
#p nametag
#freq_flyers = flyers.select {|f| f.miles_flown >= 3000}
#puts freq_flyers
#puts
#infreq_flyers = flyers.reject {|f| f.miles_flown >= 3000}
#puts infreq_flyers
#puts
#plat_flyers = flyers.any? {|f| f.status = :platinum}
#puts plat_flyers
#puts
#bronz_flyers = flyers.detect {|f| f.status == :bronze}
#puts bronz_flyers