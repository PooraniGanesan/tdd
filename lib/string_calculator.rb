class StringCalculator
    @@add_method_count = 0

    def get_add_occured_count
        @@add_method_count+=1
    end

    def add(numbers)
        get_add_occured_count
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
                raise "negatives not allowed #{negatives.join(",")}"
            end
         end 
        sum
    end
end

