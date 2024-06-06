class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        p numbers
        if numbers.start_with?("//")
            numbers = numbers.gsub("\\n", "\n")
            delimiter = numbers.scan(/\A\/\/.\s/)[0]
            numbers_to_sum = numbers.split(delimiter)[1]
            delimiter = delimiter.gsub("//", "").gsub("\n", "")
            @values = numbers_to_sum.split(delimiter)
        else
            @values = numbers.split(/,|\n|/)
        end

        
        @values.map(&:to_i).sum
        #to find a char start with // "/;\n23".start_with?("//")
        #to scan delimiters "//;\n23".scan(/\A\/\/.\s/)
        sum = 0
        @values.each do |x|
            sum+=x.to_i
        end
        sum
    end
end