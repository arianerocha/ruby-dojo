require './puzzles/find_greater_than/main'

RSpec.describe 'Numbers Greater Than' do
  describe "find_greater_than" do
    it 'should filter numbers greater than 4' do
      numbers = [1, 6, 8, 2, 9, 4, 10, 0, -1]
      expected = 4

      expect(find_greater_than(numbers)).to eq(expected)
    end
  end
end


# bundle exec rspec main_spec.rb
