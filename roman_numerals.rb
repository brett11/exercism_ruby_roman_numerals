class Integer
  RomanNumerals = [['I', 'V','X'], ['X', 'L', 'C'], ['C', 'D','M'], ['M']]
  def to_roman()
    Integer.convert_entire_number(self, "", Integer::RomanNumerals , 0)
  end

  def convert(arr)
    base = arr[0]
    mid = arr[1]
    last = arr[2]

    case self
      when 0
        ''
      when 1
        base
      when 2
        base + base
      when 3
        base + base + base
      when 4
        base + mid
      when 5
        mid
      when 6
        mid + base
      when 7
        mid + base + base
      when 8
        mid + base + base + base
      when 9
        base + last
    end
  end

  def self.convert_entire_number(n, accum, arr, i)
    if (n == 0)
      accum
    else
      convert_entire_number(n / 10, (n % 10).convert(arr[i]) + accum, arr, i + 1)
    end
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end