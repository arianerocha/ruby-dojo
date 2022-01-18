require './arrays'

RSpec.describe 'arrays' do
  describe 'get_first_element' do
    it 'should get 1 and nil' do
      expect(get_first_element([1, 2, 3])).to eq(1)
      expect(get_first_element([])).to eq(nil)
    end
  end

  describe 'get_last_element' do
    it 'should get 3 and nil' do
      expect(get_last_element([1, 2, 3])).to eq(3)
      expect(get_last_element([])).to eq(nil)
    end
  end

  describe 'get_first_n_elements' do
    it 'should get 1 and empty' do
      expect(get_first_n_elements([1, 2, 3], 1)).to eq([1])
      expect(get_first_n_elements([], 1)).to eq([])
    end
  end

  describe 'add_element_to_end_of_array' do
    it 'should add 4 to the end and return [1,2,3,4]' do
      starting_array = [1, 2, 3]
      new_array = add_element_to_end_of_array(starting_array, 4)

      expect(new_array).to eq([1, 2, 3, 4])
    end
  end

  describe 'filter_array_by_numbers_bigger_than_n' do
    it 'should return [6,7,8,9,10] when n is 5' do
      numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      filtered = filter_array_by_numbers_bigger_than_n(numbers, 5)

      expect(filtered).to eq([6, 7, 8, 9, 10])
    end
  end

  describe 'multiple_each_array_number_by_n' do
    it 'should double everything' do
      result = multiple_each_array_number_by_n([1, 2, 3], 2)

      expect(result).to eq([2, 4, 6])
    end
  end

  describe 'remove_duplicated_from_array' do
    it 'should remove duplicated from array' do
      numbers = [1, 1, 2, 3, 4, 4]
      result = remove_duplicated_from_array(numbers)

      expect(result).to eq([1, 2, 3, 4])
    end
  end

end

