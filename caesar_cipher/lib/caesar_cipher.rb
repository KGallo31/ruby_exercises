# frozen_string_literal: true

class CaesarCipher
  def translate(message, shift, result = '')
    arr = message.split("")
    arr = arr.map {|c| 
        c = c.ord
        if ((c >= 65 && c <= 90) || (c >= 97 && c <= 122))
            c += shift
            if !((c >= 65 && c <= 90) || (c >= 97 && c <= 122))
                c-=26
            end
            if !((c >= 65 && c <= 90) || (c >= 97 && c <= 122))
              c-=26
          end
            c.chr
        end
        c.chr
    }
    result = arr.join
  end
end
  #   message.each_char do |char|
  #     base = char.ord < 91 ? 65 : 97
  #     # Modifies Lowercase & Uppercase
  #     if char.ord.between?(65, 90) || char.ord.between?(97, 122)
  #       rotation = (((char.ord - base) + shift) % 26) + base
  #       result += rotation.chr
  #     # Keeps spaces & punctuation
  #     else
  #       result += char
  #     end
  #   end
  #   result
  # end