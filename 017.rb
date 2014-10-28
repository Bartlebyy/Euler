# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
# forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
# letters. The use of "and" when writing out numbers is in compliance with British usage.

beginning = Time.now

def number_letter_count max
  @count = 0
  (1..max).each do |num|
    digits = num.to_s.length
    organize_by_digits(digits, num)
  end
  @count
end

def organize_by_digits digits, num
  case digits
  when 4
    @count += "onethousand".length
  when 3
    three_digits(num)
  when 2
    two_digits(num)
  when 1
    one_digit(num)
  end
end

def three_digits num
  num = num.to_s
  @count += one_digit_to_word(num[0].to_i).length + "hundred".length
  unless num[1,2] == "00"
    @count += "and".length
    if num[1] == "0"
      one_digit(num[2].to_i)
    else
      two_digits(num[1,2].to_i)
    end
  end
end

def two_digits num
  if num >= 20
    num = num.to_s
    @count += two_digits_to_words(num[0].to_i).length + one_digit_to_word(num[1].to_i).length
  else
    @count += special_two_digits_to_words(num).length
  end
end

def one_digit num
  @count += one_digit_to_word(num).length
end

def one_digit_to_word num
  case num
  when 0
    ""
  when 1
    "one"
  when 2
    "two"
  when 3
    "three"
  when 4
    "four"
  when 5
    "five"
  when 6
    "six"
  when 7
    "seven"
  when 8
    "eight"
  when 9
    "nine"
  end
end

def two_digits_to_words num
  case num
  when 2
    "twenty"
  when 3
    "thirty"
  when 4
    "forty"
  when 5
    "fifty"
  when 6
    "sixty"
  when 7
    "seventy"
  when 8
    "eighty"
  when 9
    "ninety"
  end
end

def special_two_digits_to_words num
 case num
 when 10
   "ten"
 when 11
   "eleven"
 when 12
   "twelve"
 when 13
   "thirteen"
 when 14
   "fourteen"
 when 15
   "fifteen"
 when 16
   "sixteen"
 when 17
   "seventeen"
 when 18
   "eighteen"
 when 19
   "nineteen"
 end
end

puts number_letter_count(1000)
puts "Time elapsed #{Time.now - beginning} seconds."
