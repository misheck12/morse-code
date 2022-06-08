ALPHA_TO_MORSE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--..",
  "1" => ".----",
  "2" => "..---",
  "3" => "...--",
  "4" => "....-",
  "5" => ".....",
  "6" => "-....",
  "7" => "--...",
  "8" => "---..",
  "9" => "----.",
  "0" => "-----",
  " " => "/" 
  }

  MORSE_TO_ALPHA = ALPHA_TO_MORSE.invert

  def decode_char(str)
    MORSE_TO_ALPHA[str].upcase
  end

  def decode_word(str)
    str.split(" ").map { |char| decode_char(char) }.join
  end

  def morse_to_alpha(str)
    str.split("   ").map { |word| decode_word(word)}.join(" ")
  end

  # Bonus
  def alpha_to_morse(str)
    str.split("").map { |letter| ALPHA_TO_MORSE[letter] }.join(" ")
  end

  print (morse_to_alpha(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...") + "\n")