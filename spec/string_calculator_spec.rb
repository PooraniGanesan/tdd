require 'string_calculator'
RSpec.describe StringCalculator do
    it 'should add numbers from a string' do
      expect(StringCalculator.new.add('')).to eq(0)
      expect(StringCalculator.new.add('1')).to eq(1)
      expect(StringCalculator.new.add('1,2')).to eq(3)
      expect(StringCalculator.new.add('1\n2,3')).to eq(6)
      expect(StringCalculator.new.add('//;\n1;2')).to eq(3)
      expect {StringCalculator.new.add('//;\n1;2;3;-1')}.to raise_error("negatives not allowed -1")
      expect {StringCalculator.new.add('//;\n1;2;3;-1;-2')}.to raise_error("negatives not allowed -1,-2")
    end
end
