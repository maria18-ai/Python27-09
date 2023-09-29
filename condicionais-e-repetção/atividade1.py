# Programa para contar as vezes que a estrutura de repetição roda no codigo, com a condição que A seja maior que B

a = 15
b = 3

aux = 0  

while a > b : 
    sub = a - b
    a = sub
    aux += 1
      
print(a,aux)

