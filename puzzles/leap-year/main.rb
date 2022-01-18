puts "Dojo leap-year dos devs fodasticos :catjam:"

def list_devs
  participants = [
    { pilot: 'Gaspa', copilot: 'Felipe Marchi'},
    { pilot: 'Felipe Marchi', copilot: 'Helder'},
    { pilot: 'Helder', copilot: 'Luiz Meier'},
    { pilot: 'Luiz Meier', copilot: 'Laura'},
    { pilot: 'Laura', copilot: 'Carlos Mafra'},
    { pilot: 'Carlos Mafra', copilot: 'Gabriel Muller'},
    { pilot: 'Gabriel Muller', copilot: 'Igor F'},
    { pilot: 'Luiz Meier', copilot: 'Rohden'},
    { pilot: 'Rohden', copilot: 'Arthur'},
    { pilot: 'Arthur', copilot: 'Helder'},
    { pilot: 'Helder', copilot: 'Henrique'},
    { pilot: 'Henrique', copilot: 'Luiz Meier'},
  ]

  participants.map.with_index(1) do |participant, index|
    "#{index}° Pilot: #{participant[:pilot]} -- Copilot: #{participant[:copilot]}"
  end
end

def leap_year?(year)
  return false if year <= 0
  return true if year % 400 == 0
  return false if year % 100 == 0

  year % 4 == 0 
end
