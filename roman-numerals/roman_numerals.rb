class Integer
  def to_roman
    source = {
        1000 => 'M',
        900  => 'CM',
        500  => 'D',
        400  => 'CD',
        100  => 'C',
        90   => 'XC',
        50   => 'L',
        40   => 'XL',
        10   => 'X',
        9    => 'IX',
        5    => 'V',
        4    => 'IV',
        1    => 'I'
      }

    number_to_convert = self
    numeral = ""
    
    while number_to_convert > 0 do
      source.each do |number, roman_numeral|
        if number_to_convert >= number
          numeral << roman_numeral
          number_to_convert = number_to_convert - number
          break
        end
      end
    end

    return numeral
  end
end



