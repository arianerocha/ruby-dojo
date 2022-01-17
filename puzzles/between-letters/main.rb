# DoJo
# Faça um programa que receba duas letras, e diga quantas letras há entre elas. As letras passadas devem estar em ordem alfabética. Se não estiverem o programa deve avisar o usuário. 

# Exemplo: 
#  'a', 'b' = 0 
#  'a', 'c' = 1 
#  'a', 'z' = 24 
#  'w', 'e' = Não está na ordem alfabética
# Se as letras forem iguais , da erro



def calculate_letters_distance(first_letter, second_letter)
  return "Letras iguais não são permitidas" if second_letter  == first_letter

  difference_letter = second_letter.ord - first_letter.ord - 1

  if difference_letter < 0 
    return "Não está na ordem alfabética"
  end

  difference_letter
end
  
  # a,b
  
  # first, last = readline.spli(',')
  # calculate_letters_distance(first, last)
  # calculate_letters_distance first, last
  
  
  # Teste: bundle exec rspec main_spec.rb
  # Rodar: bundle exec ruby main.rb