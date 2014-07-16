class Numbers

  def self.convert(number)
      num = number.to_i
        if num <20 and num>10
             "#{number.to_i}th"
        elsif num%10 == 2
           "#{number}nd"
         elsif num%10 == 1
           "#{number.to_i}st"
          elsif num%10 == 3
            "#{number.to_i}rd"
         else
             "#{number.to_i}th"
     end
                             
end
end 
