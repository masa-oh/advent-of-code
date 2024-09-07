# frozen_string_literal: true

INT_PATTERN = /\d/
STR_PATTERN = /one|two|three|four|five|six|seven|eight|nine/
R_STR_PATTERN = /enin|thgie|neves|xis|evif|ruof|eerht|owt|eno/

STR_TO_INT = { one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9 }
R_STR_TO_INT = { eno: 1, owt: 2, eerht: 3, ruof: 4, evif: 5, xis: 6, neves: 7, thgie: 8, enin: 9 }

def l(str)
  int_idx = str.index(INT_PATTERN) || str.size
  str_idx = str.index(STR_PATTERN) || str.size

  if int_idx < str_idx
    str[int_idx].to_i
  else
    STR_TO_INT[str.match(STR_PATTERN)[0].to_sym]
  end
end

def r(str)
  str.reverse!
  int_idx = str.index(INT_PATTERN) || str.size
  str_idx = str.index(R_STR_PATTERN) || str.size

  if int_idx < str_idx
    str[int_idx].to_i
  else
    R_STR_TO_INT[str.match(R_STR_PATTERN)[0].to_sym]
  end
end

S = $<.map &:chomp

S.map! do |str|
  "#{l(str)}#{r(str)}".to_i
end

puts S.sum
