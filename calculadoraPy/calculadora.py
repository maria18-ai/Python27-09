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
    return sum

def sub(a,b) : 
    subi =  a - b
    print(subi)
    return subi

def mult(a,b) : 
    multp = a * b
    print(multp)
    return multp 

def div(a,b) : 
    divi = a / b
    print(divi)
    return divi

# Vaviavel de acesso para a variavel "opcao"
op = 0

# Vetor responsavel por armazenar os resultados do usuario

resultado = 0
vetor = []

# Estrutura de repetição 

while (op <= 4 and op <= 10) :

    userNum1 = float(input("Digite o 1º número: "));
    userNum2 = float(input("Digite o 2º número: "));
    
    op = selecao()
   
    if op == 1 :
       resultado = soma(userNum1, userNum2)       
    elif op == 2 : 
       resultado = sub(userNum1, userNum2)
    elif op == 3 : 
       resultado = mult(userNum1,userNum2)
    elif op == 4 :
       resultado = div(userNum1, userNum2)
    else : 
        print("Saiu da Calculadora")      
    vetor.append(resultado)   

print("Vetor dos resultados: ")    
for i in vetor : 
    print(i, " ")
       
       
       
        
       



