def caesar_cipher(phrase, key)
    words = phrase.split(" ")
    capital_letters = ('A'..'Z').to_a
    letters = ('a'..'z').to_a
    words.each do |word|
        word.split('').each do |i|
            if capital_letters.include?(word[i])
                capital_index = capital_letters.index(word[i])
                if capital_index < (26-key)
                    word[i] = capital_letters[capital_index + key]
                else
                    word[i] = capital_letters[capital_index + key -26]
                end
            elsif letters.include?(word[i])
                letter_index = letters.index(word[i])
                if letter_index < (26-key)
                    word[i] = letters[letter_index + key]
                else
                    word[i] = letters[letter_index + key -26]
                end
            end
        end
    end
    puts words.join(" ")
end

caesar_cipher("What a string!", 5)