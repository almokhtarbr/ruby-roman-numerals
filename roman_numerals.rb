class Integer
  def to_roman
    numbers = self.digits
    rank = numbers.size
    case rank
    when 1
      units(numbers.first, 'I', 'V', 'X')
    when 2
      units(numbers[1], 'X', 'L', 'C') + units(numbers[0], 'I', 'V', 'X')
    when 3
      units(numbers[1], 'M', '', '') + units(numbers[1], 'X', 'L', 'C') + units(numbers[0], 'I', 'V', 'X')
    end
  end

  def units(number, unit, half, full)
    case number
    when 1
      unit
    when 2
      unit * 2
    when 3
      unit * 3
    when 4
      unit + half
    when 5
      half
    when 6
      half + unit
    when 7
      half + unit * 2
    when 8
      half + unit * 3
    when 9
      unit + full
    else
      ''
    end
  end
end

27.to_roman