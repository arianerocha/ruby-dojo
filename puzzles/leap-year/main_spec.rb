require './puzzles/leap-year/main'

RSpec.describe 'main' do
  # let(:nome_que_tu_quiser) { 'coisa' }
  #expect(is_leap(test_value)).to eq(false)
  
  it 'nao eh divisivel por 4 e nao eh bissexto' do
    test_value = (2*4)+1
    expect(is_divisible_to_4(test_value)).to eq(false)
  end

  it 'eh divisivel por 100 nao eh bissexto' do
    test_value = (200)
    expect(is_divisible_to_100(test_value)).to eq(false)
  end

  it 'eh divisivel por 400 eh bissexto' do
    test_value = (2000)
    expect(is_divisible_to_400(test_value)).to eq(true)
  end

  # it 'eh divisivel por 4 mas nao eh bissexto' do
  #   test_value = 100
  #   expect(is_leap(test_value)).to eq(false)
  # end

  # it 'nao eh divisivel por 100 mas nao eh bissexto' do
  #   test_value = 70
  #   expect(is_leap(test_value)).to eq(false)
  # end
end


# rodar programa: bundle exec ruby main.rb
# rodar teste: bundle exec rspec main_spec.rb 

# Definição
# O ano for divisível por 4, mas não divisível por 100, exceto se ele for também divisível por 400

# Gaspa
# Felipe Marchi
# Helder
# Luiz Meier
# Laura, Carlos
# Muller
# Igor F
