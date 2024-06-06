class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        numbers = numbers.gsub("\\n", "\n")
        if numbers.start_with?("//")
            delimiter = numbers.scan(/\A\/\/.\s/)[0]
            numbers_to_sum = numbers.split(delimiter)[1]
            delimiter = delimiter.gsub("//", "").gsub("\n", "")
            @values = numbers_to_sum.split(delimiter)
        else
            @values = numbers.split(/[,\n]/)
        end

        
        # @values.map(&:to_i).sum
        #to find a char start with // "/;\n23".start_with?("//")
        #to scan delimiters "//;\n23".scan(/\A\/\/.\s/)
        begin
        sum = 0
        negatives = []
        @values.each do |x|
            sum+=x.to_i
            negatives << x if x.to_i.negative?
        end
        unless negatives.empty?
            raise_error "negatives not allowed #{negatives.join(",")}"
        end 
        sum
    end
end

