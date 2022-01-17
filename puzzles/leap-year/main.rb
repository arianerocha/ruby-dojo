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
  ]

  participants.map.with_index(1) do |participant, index|
    "#{index}° Pilot: #{participant[:pilot]} -- Copilot: #{participant[:copilot]}"
  end
end

def is_divisible_to_4(num)
  if num % 4 == 0
    return true
  else
    return false
  end
end

def is_divisible_to_100(num)
  if num % 100 == 0
    return true
  else
    return false
  end
end


def is_leap(year)
  # return 'a'
end
