class Date

def self.convert(number)
number = number.to_i
 
if (10...20) == number
s = "#{number}th"
return s
elsif
g = %w{ th st nd rd th th th th th th }
a = number.to_s
c=a[-1..-1].to_i
s = a + g[c]
return s
end
end
end
