# def prime?(value)
#   for i in 2...value do
#     if value % i == 0 && i != value
#       return false
#     end
#   end

#   true
# end

# https://stackoverflow.com/q/3296050/2062663
# TODO:
# - Inverter a lógica, pois a regex detecta números compostos (não primos)
# - O match deve ser aplicado a uma string de "1"s, não um int.
# def prime?(value)
#   return true if value.to_s.match( /^1?$|^(11+?)\1+$/) # Ruby padrão não aceita grupos
#
#   false
# end

def prime?(value)
  for i in 2...Math.sqrt(value.abs) do
    if value % i == 0
      return false
    end
  end

  true
end
