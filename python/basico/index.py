# DECLARANDO VARIÁVEIS
x = 10
y = 3.14
nome = "João"
array_misto = [1, "dois", True, 3.14]
pessoa = {
    "nome": "João", 
    "idade": 30, 
    "cidade": "São Paulo"
}


# IF E ELSE
nota = 75

if nota > 50:
    print("Aprovado")
elif nota == 50:
    print("Nota Mínima")
else:
    print("Reprovado")


# FOR
lista = [1, 2, 3, 4, 5]

for elemento in lista:
    print(elemento)

for i in range(5):
    print(i)

dicionario = {"a": 1, "b": 2, "c": 3}

for chave, valor in dicionario.items():
    print(chave, valor)


# WHILE E DO WHILE
contador = 0

while contador < 5:
    print(contador)
    contador += 1

contador = 0

while True:
    print(contador)
    contador += 1
    if contador >= 5:
        break


# FUNÇÃO
def soma(a, b):
    """Esta função soma dois números e retorna o resultado."""
    resultado = a + b
    return resultado

print(soma(5, 10))

def procedimento():
    """Esta função é um procedimento que não retorna nenhum valor."""
    print("TESTE - este é um procedimento.")

procedimento()


# LER E PRINTAR VALORES NO TERMINAL
nome = input("Digite seu nome: ")
idade = int(input("Digite sua idade: "))

print("NOME:", nome, "\nIDADE:", idade)