class Integer
    def to_roman
        case self
        when 1 
            'I'
        when 2
            'II'
        when 3
            'III'
        when 4
            'IV'
        when 5
            'V'
        when 6
            'VI'
        when 7
            'VII'
        when 8
            'VIII'
        when 9
            'IX'
        end

        if self.to_s.size > 2 

        end
    end
end