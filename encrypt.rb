
class EncryptionEngine
  KEY = 13

  def encrypt(message)
    message.split("").map! { |letter| encrypt_letter(letter) }.join('')
  end

  def decrypt(crypt_message)
    crypt_message.split("").map! { |letter| encrypt_letter(letter) }.join('')
  end

  private

  def encrypt_letter(letter)
    return ' ' if letter == ' '
    alphabet = letter_uppercase?(letter) ? ('A'..'Z').to_a : ('a'..'z').to_a

    letter_index = alphabet.index(letter) + KEY
    letter_index -= 26 if letter_index >= 26
    alphabet[letter_index]
  end

  def letter_uppercase?(letter)
    letter == letter.upcase
  end
end

puts "Votre message"
message = gets.chomp
engine = EncryptionEngine.new
message_encrypt = engine.encrypt(message)
puts message_encrypt
puts engine.decrypt(message_encrypt)

