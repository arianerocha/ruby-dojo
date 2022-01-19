require './puzzles/prime/main'

RSpec.describe 'Nossos testes' do
  describe "prime" do
    it 'expected prime' do
      value = 7
      expected_value = true
      expect(prime?(value)).to eq(expected_value)
    end

    it 'expected not prime' do
      value = 2**30
      expected_value = false
      expect(prime?(value)).to eq(expected_value)
    end

    it 'expected not prime' do
      value = 45**25
      expected_value = false
      expect(prime?(value)).to eq(expected_value)
    end

    it 'expected negative prime' do
      value = -7
      expected_value = true
      expect(prime?(value)).to eq(expected_value)
    end
  end
end

# bundle exec rspec prime_spec.rb

