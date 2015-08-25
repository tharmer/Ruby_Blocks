class ArithmeticProg
    
    puts "Enter series size"
    input = gets.to_i  
    @total = input
    series = []
    
    1.upto(input) do |input; total|
      puts "Enter #{input} of #{@total} numbers"    
      series.push(gets.chomp)
    end
    
      p series
      middle = @total / 2
    
      midpoint =  series[middle]
      updiff = series[middle + 1] 
      downdiff = series[middle - 1]
      missing = 0
    
      p up = updiff.to_i - midpoint.to_i
      p down = midpoint.to_i - downdiff.to_i
    
    if down < up
      missing = (midpoint.to_i + down)  
      p "Missing number is: #{missing}"
    elsif down > up  
      missing = (midpoint.to_i - up)
      p "Missing number is: #{missing}"
    end
    
end