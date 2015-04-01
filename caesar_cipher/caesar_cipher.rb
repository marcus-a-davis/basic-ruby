
def caesar_cipher(stringer, num)

stringer.downcase

  stringer.scan(/./).map! do |char|
  	char_ord = (char.ord + num)
  	case
  	 when char.match(/[a-z]/) && char_ord > 122
  	 	(char_ord.modulo(123) + 97).chr
  	 when char.match(/[A-Z]/) && char_ord > 90
  	 	(char_ord.modulo(91) + 65).chr
  	 when char.match(/[A-Za-z]/) && char_ord
  	 	char_ord.chr
  	 else
  	 	char
  	 end 

  end.join


end

puts caesar_cipher("What a string!", 5)