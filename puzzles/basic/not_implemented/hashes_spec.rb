require './hashes'

RSpec.describe 'hashes' do
  describe 'create_a_simples_hash' do
    it 'should create it like {"a": 1}' do
      expect(create_a_simples_hash('a', 1)).to eq({ 'a' => 1 })
    end
  end

  describe 'get_value_from_hash' do
    it 'should get 1 on {"a": 1}' do
      my_hash = create_a_simples_hash('a', 1)
      result = get_value_from_hash(my_hash, 'a')

      expect(result).to eq(1)
    end
  end

  describe 'get_value_from_hash_safely' do
    it 'should get 1 on {"a": 1}' do
      my_hash = create_a_simples_hash('a', 1)
      result = get_value_from_hash_safely(my_hash, 'a')

      expect(result).to eq(1)
    end

    it 'should throw an exception' do
      my_hash = create_a_simples_hash('a', 1)
      expect {
        get_value_from_hash_safely(my_hash, 'b')
      }.to raise_error(KeyError)
    end
  end

  describe 'set_value_in_hash' do
    it 'should add a new value' do
      my_hash = create_a_simples_hash('a', 1)
      set_value_in_hash(my_hash, 'b', 2)

      expect(my_hash).to eq({ 'a' => 1, 'b' => 2 })
    end
  end

  describe 'verify_if_key_exists' do
    it 'should return truthy on "a"' do
      my_hash = create_a_simples_hash('a', 1)
      expect(verify_if_key_exists(my_hash, 'a')).to be_truthy
    end

    it 'should return falsy on "b"' do
      my_hash = create_a_simples_hash('a', 1)
      expect(verify_if_key_exists(my_hash, 'b')).to be_falsy
    end
  end

  describe 'delete_if_key_is' do
    it 'should delete the first one' do
      my_hash = create_a_simples_hash('a', 1)
      set_value_in_hash(my_hash, 'b', 2)

      delete_if_key_is(my_hash, 'a')
      expect(my_hash).to eq({ 'b' => 2 })
    end
  end

  describe 'create_a_hash_with_default_value' do
    it 'should get the default value' do
      my_hash = create_a_hash_with_default_value('default cool value')
      result = my_hash['i dont exist']

      expect(result).to eq('default cool value')
    end
  end
end

