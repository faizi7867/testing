class Vowel
    attr_accessor :input
    def initialize(input)
        @input = input
    end

    def rem_vowels
        if @input == nil or @input == " "
            return 0
        end
        l = @input.split(/[aeiouAEIOU]/).join("").split(/\s/)
        k = ""
        l.each do |i|
            if i != ""
                k=k+i+" "
            end
        end
        # p k
        k.strip
    end
end
# p RemoveVowels.new("[hi, I am a developer]").removeVowels