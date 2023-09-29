numIni = int(input("Escreva o número inicial: "));
numFim = int(input("Escreva o número final: "));

aux = 0

while numIni < numFim:
    numIni += 1
    aux += 1

print("CONTRAGEM: ",aux)