class Roman

  def self.convert(input)
       String s = ""
         i = 0
       i = input.to_i
    while i >= 1000
        s += "M"
        i -= 1000
    end
    while i >= 900
        s += "CM"
        i -= 900
     end
    
    while i >= 500
        s += "D"
        i -= 500
    end
    while i >= 400
        s += "CD"
        i -= 400
    end
    while i >= 100
        s += "C"
        i -= 100
    end
    while i >= 90
        s += "XC"
        i -= 90
    end
    while i >= 50
        s += "L"
        i -= 50
    end
    while i >= 40
        s += "XL"
        i -= 40
    end
    while i >= 10
        s += "X"
        i -= 10
    end
    while i >= 9
        s += "IX"
        i -= 9
    end
    while i >= 5
        s += "V"
        i -= 5
    end
    while i >= 4
        s += "IV"
        i -= 4
    end
    while i >= 1
        s += "I"
        i -= 1
     end
    return s
end
end
 
