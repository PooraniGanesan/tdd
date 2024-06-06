class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        values = numbers.split(/,|\n|/)
        p values.map(&:to_i)
        values.map(&:to_i).sum
    end
end