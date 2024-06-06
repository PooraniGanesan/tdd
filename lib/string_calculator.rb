class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        values = numbers.split(/,|\n|/)
        
        values.map(&:to_i).sum
        #to find a char start with // "/;\n23".start_with?("//")
        #to scan delimiters "//;\n23".scan(/\A\/\/.\s/)
    end
end