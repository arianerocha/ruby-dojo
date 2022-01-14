# Descubra o assassino

O empresário Bill G. Ates foi assassinado e o corpo dele foi deixado na frente da delegacia de polícia. O detetive Lin Ust Orvalds foi escolhido para investigar este caso. Após uma série de investigações, ele organizou uma lista com prováveis assassinos, os locais do crime e quais armas poderiam ter sido utilizadas.

Suspeitos:

1. Charles B. Abbage
2. Donald Duck Knuth
3. Ada L. Ovelace
4. Alan T. Uring
5. Ivar J. Acobson
6. Ras Mus Ler Dorf

Locais:
1. Redmond
2. Palo Alto
3. San Francisco
4. Tokio
5. Restaurante no Fim do Universo
6. São Paulo
7. Cupertino
8. Helsinki
9. Maida Vale
10. Toronto

Armas:
1. Peixeira
2. DynaTAC 8000X (o primeiro aparelho celular do mundo)
3. Trezoitão
4. Trebuchet
5. Maça
6. Gládio

Uma testemunha foi encontrada, mas ela só consegue responder se Lin fornecer uma teoria. Para cada teoria ele "chuta" um assassino, um local e uma arma. A testemunha então responde com um número. 
* Se a teoria estiver correta (assassino, local e arma corretos), ela responde 0. 
* Se a teoria está errada, um valor 1,2 ou 3 é retornado. 
  * 1 indica que o assassiona está incorreto; 
  * 2 indica que o local está incorreto; 
  * 3 indica que a arma está incorreta. 
* Se mais de uma suposição está incorreta, ela retorna um valor arbitrário entre as que estão incorretos (isso é totalmente aleatório).


Por exemplo, se o assassino for Donald Duck Knuth usando um trezoitão em Tokio:

Teoria: 1, 1, 1
Retorno: 1, ou 2, ou 3 (todos estão incorretos) 

Teoria: 3, 1, 3
Retorno: 1, ou 3 (somente o local está correto)

Teoria: 5, 3, 4
Retorno: 1 (somente o assassino está incorreto)

Teoria: 2, 3, 4
Retorno: 0 (todos corretos, você solucionou o caso)

Você precisa desenvolver um programa que tente resolver o problema. Inicialmente não se preocupe no número de tentativas necessário para encontrar a solução. Depois tente melhorar a maneira com que as teorias são testadas para que Lin encontre a solução do problema no menor número de tentativas.