require './main'

RSpec.describe 'main' do
  it 'returns the correct distance between a and z' do
    result = calculate_letters_distance('a', 'z')
    expect(result).to eq(24)
  end

  it 'returns the correct distance between a and b' do
    result = calculate_letters_distance('a', 'b')
    expect(result).to eq(0)
  end

  it 'returns the correct distance between a and c' do
    result = calculate_letters_distance('a', 'c')
    expect(result).to eq(1)
  end

  it 'returns error for distance between w and e' do
    result = calculate_letters_distance('w', 'e')
    expect(result).to eq("Não está na ordem alfabética")
  end

  it 'returns error for distance the equal letters' do
    result = calculate_letters_distance('a', 'a')
    expect(result).to eq("Letras iguais não são permitidas")
  end

  it 'returns error for numbers' do
    result = calculate_letters_distance(0, 2)
    expect(result).to eq("Números não são permitidos")
  end
end

