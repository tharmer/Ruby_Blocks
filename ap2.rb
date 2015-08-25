class ArithmeticProg
    
    puts "Enter series size"
    input = gets.to_i  
    @total = input
    series = []
    
    1.upto(input) do |input; total|
      puts "Enter #{input} of #{@total} numbers"    
      series.push(gets.chomp.to_i)
    end
    
    total_number = (series.size.to_i+1)/2.0*(series.first.to_i + series.last.to_i)  
    actual_number = series.reduce(:+)
      
    missing_number = total_number - actual_number
    puts missing_number.to_i
    
end    