,
# Função para a seleção do calculo

def selecao() :
     print("CALCULADORA");
     print("Digite a opção de calculo: ");
     opcao = int(input("1: Soma. 2: Subtração. 3: Multiplicação. 4: Divisão. 5: Sair -> "));
     return opcao
 
# Funções de calculo
 
def soma(a,b) : 
    sum = a + b 
    print(sum)

def sub(a,b) : 
    subi =  a - b
    print(subi)

def mult(a,b) : 
    multp = a * b
    print(multp)

def div(a,b) : 
    divi = a / b
    print(divi)

# Estrutura de repetição 

op = 0

while (op <= 4) :

    userNum1 = float(input("Digite o 1º número: "));
    userNum2 = float(input("Digite o 2º número: "));
    
    op = selecao()
   
    if op == 1 :
       soma(userNum1, userNum2);
    elif op == 2 : 
       sub(userNum1, userNum2)
    elif op == 3 : 
       mult(userNum1,userNum2)
    elif op == 4 :
       div(userNum1, userNum2)
    else : 
        print("Saiu da Calculadora")
       
       
        
       



