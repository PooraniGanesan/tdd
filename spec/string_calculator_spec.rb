require 'string_calculator'
RSpec.describe StringCalculator do
     let(:calculator) {StringCalculator.new}
    it 'should add numbers from a string' do
      expect(calculator.add('')).to eq(0)
      expect(calculator.add('1')).to eq(1)
      expect(calculator.add('1,2')).to eq(3)
      expect(calculator.add('1\n2,3')).to eq(6)
      expect(calculator.add('//;\n1;2')).to eq(3)
      expect {calculator.add('//;\n1;2;3;-1')}.to raise_error("negatives not allowed -1")
      expect {calculator.add('//;\n1;2;3;-1;-2')}.to raise_error("negatives not allowed -1,-2")
      expect(calculator.add('1000,2')).to eq(2)
    end
    it 'should get number of times add method has been called' do
      expect(calculator.get_add_occured_count).to eq(9)
    end
end