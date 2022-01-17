require './puzzles/leap-year/main'

RSpec.describe 'main' do 
  context 'when call list_devs' do
    let(:devs) do
      [
        "1° Pilot: Gaspa -- Copilot: Felipe Marchi",
        "2° Pilot: Felipe Marchi -- Copilot: Helder",
        "3° Pilot: Helder -- Copilot: Luiz Meier",
        "4° Pilot: Luiz Meier -- Copilot: Laura",
        "5° Pilot: Laura -- Copilot: Carlos Mafra",
        "6° Pilot: Carlos Mafra -- Copilot: Gabriel Muller",
        "7° Pilot: Gabriel Muller -- Copilot: Igor F"
      ]
    end

    it 'list dojo participants' do
      expect(list_devs).to eq(devs)
    end
  end

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
