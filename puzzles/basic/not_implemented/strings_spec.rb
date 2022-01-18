require './strings'

RSpec.describe 'strings' do
  describe 'get_length_of_string' do
    it 'on "cuchi" should return 5' do
      expect(get_length_of_string('cuchi')).to eq(5)
    end
  end

  describe 'is_the_string_empty?' do
    it 'on "douglinhas" to be falsy' do
      expect(is_the_string_empty?('douglinhas')).to be_falsy
    end

    it 'on "" to be truthy' do
      expect(is_the_string_empty?('')).to be_truthy
    end
  end

  describe 'combine_two_strings_and_add_a_underline' do
    it 'should return "dani_javeiro with "dani" and javeiro"' do
      result = combine_two_strings_and_add_a_underline('dani', 'javeiro')
      expect(result).to eq('dani_javeiro')
    end
  end

  describe 'convert_string_to_integer' do
    it 'should return "1" on 1' do
      expect(convert_string_to_integer('1')).to eq(1)
    end
  end
end

