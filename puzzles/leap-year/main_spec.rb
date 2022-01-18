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
        "7° Pilot: Gabriel Muller -- Copilot: Igor F",
        "8° Pilot: Luiz Meier -- Copilot: Rohden",
        "9° Pilot: Rohden -- Copilot: Arthur",
        "10° Pilot: Arthur -- Copilot: Helder",
        "11° Pilot: Helder -- Copilot: Henrique",
        "12° Pilot: Henrique -- Copilot: Luiz Meier",
      ]
    end

    it 'list dojo participants' do
      expect(list_devs).to eq(devs)
    end
  end

  it 'returns true for leap years' do
    expect(leap_year?(1600)).to eq(true)
    expect(leap_year?(1732)).to eq(true)
    expect(leap_year?(1888)).to eq(true)
    expect(leap_year?(1944)).to eq(true)
    expect(leap_year?(2008)).to eq(true)
  end

  it 'returns false for non leap years' do
    expect(leap_year?(1742)).to eq(false)
    expect(leap_year?(1889)).to eq(false)
    expect(leap_year?(1951)).to eq(false)
    expect(leap_year?(2011)).to eq(false)
  end

  it 'deals with <= 0' do 
    expect(leap_year?(0)).to eq(false)
    expect(leap_year?(-400)).to eq(false)
  end
end

