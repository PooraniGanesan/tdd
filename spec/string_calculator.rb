Rspec.describe StringCalculator do
    it 'should add numbers from a string' do
      expect(StringCalculator.new.add('')).to_eq(0)
    end
end
