def caesar_encode(string, number)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_string = ""

  string.split('').each do |char|
    if alphabet.include?(char.downcase)
      index = (alphabet.index(char.downcase) + number) % 26
      new_string << alphabet[index] if char == char.downcase
      new_string << alphabet[index].upcase if char != char.downcase
    else
      new_string << char
    end
  end
  new_string
end

def caesar_decode(string, number)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_string = ""

  string.split('').each do |char|
    if alphabet.include?(char.downcase)
      index = (alphabet.index(char.downcase) - number) % 26
      new_string << alphabet[index] if char == char.downcase
      new_string << alphabet[index].upcase if char != char.downcase
    else
      new_string << char
    end
  end
  new_string
end
