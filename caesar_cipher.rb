def caesar_cipher(text, shift)
    final_text = []

    text.size.times do |i|
        letter = text[i].ord

        if (letter >= 65 && letter <=90)
            letter -= 65
            letter = modify(letter + shift, 26)
            letter += 65
        elsif (letter >= 97 && letter <=122)
            letter -= 97
            letter = modify(letter + shift, 26)
            letter += 97
        end

        final_text.push(letter.chr)    
    end

    puts final_text.join
end

def modify(letter, alpha)
    if letter < 0
        letter = alpha - letter.abs % alpha
    end
    return letter % alpha
end

caesar_cipher("Zebraz",1)