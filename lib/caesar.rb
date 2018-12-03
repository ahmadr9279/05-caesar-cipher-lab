def low_case
{
"a"=> 1,
"b"=> 2,
"c"=>3,
"d"=>4,
"e"=>5,
"f"=>6,
"g"=>7,
"h"=>8,
"i"=>9,
"j"=>10,
"k"=>11,
"l"=>12,
"m"=>13,
"n"=>14,
"o"=>15,
"p"=>16,
"q"=>17,
"r"=>18,
"s"=>19,
"t"=>20,
"u"=>21,
"v"=>22,
"w"=>23,
"x"=>24,
'y'=>25,
'z'=>26,
}
end 

def up_case
{
"A"=> 1,
"B"=> 2,
"C"=>3,
"D"=>4,
"E"=>5,
"F"=>6,
"G"=>7,
"H"=>8,
"I"=>9,
"J"=>10,
"K"=>11,
"L"=>12,
"M"=>13,
"N"=>14,
"O"=>15,
"P"=>16,
"Q"=>17,
"R"=>18,
"S"=>19,
"T"=>20,
"U"=>21,
"V"=>22,
"W"=>23,
"X"=>24,
'Y'=>25,
'Z'=>26,
}
end 


def caesar_decode(string, offset)
strr = string.split("")
hash =[
strr.map do |letter|
if low_case.keys.include?(letter)
  if offset>=low_case[letter] && offset<=26
    letter= low_case[letter]
    leftover=offset-letter
    letter=26-leftover
    invert_low = low_case.invert
    letter = invert_low[letter]
    elsif offset>=27
    letter= low_case[letter]
    offset= offset% 26
    leftover=offset-letter
    letter=26-leftover
    invert_low = low_case.invert
    letter = invert_low[letter]
  else
    letter= low_case[letter]
    letter =letter-offset
    invert_low = low_case.invert
    letter = invert_low[letter]
  end
elsif up_case.keys.include?(letter)
  if offset>=up_case[letter] && offset<=26
    letter= up_case[letter]
    leftover=offset-letter
    letter=26-leftover
    invert_up = up_case.invert
    letter = invert_up[letter]
    elsif offset>=27
    letter= up_case[letter]
    offset= offset% 26
    leftover=offset-letter
    letter=26-leftover
    invert_up = up_case.invert
    letter = invert_up[letter]
  else
    letter= up_case[letter]
    letter =letter-offset
    invert_up = up_case.invert
    letter = invert_up[letter]
  end

else
    letter = letter
end#for if
end#for iterator
]
puts hash.join("")
end#for method
caesar_decode("ABCde$", 26)

