require 'string_calculator'
RSpec.describe StringCalculator do
    it 'should add numbers from a string' do
      expect(StringCalculator.new.add('')).to eq(0)
    end
end
