
class EncryptionEngine
  def encrypt(message)
    array_letters = message.split("")

    array_letters.map! do |letter|
      encrypt_letter(letter)
    end
    array_letters.join("")
  end



  def decrypt(string)

  end

  private

  def encrypt_letter(letter)
    return ' ' if letter == ' '
    alphabet = if letter_uppercase?(letter)
      ('A'..'Z').to_a
    else
      ('a'..'z').to_a
    end

    letter_index = alphabet.index(letter)
    letter_13 = letter_index + 13
    letter_13 -= 26 if letter_13 >= 26
    alphabet[letter_13]
  end

  def letter_uppercase?(letter)
    letter == letter.upcase
  end
end
  engine = EncryptionEngine.new
  puts engine.encrypt("Mon MeSSage")

