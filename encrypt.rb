
class EncryptionEngine

  def encrypt_letter(letter)

    alphabet = ('A'..'Z').to_a
    letter_index = alphabet.index(letter)

    letter_13 = letter_index + 13
    letter_13 -= 26 if letter_13 >= 26
    alphabet[letter_13]
  end

  def encrypt(message)

    array_letters = message.split("")

    array_letters.map! do |letter|
      encrypt_letter(letter)
    end
    array_letters.join("")
  end



  def decrypt(string)

  end
end
  engine = EncryptionEngine.new
  puts engine.encrypt("ADRIEN")

