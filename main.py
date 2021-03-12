# Cidade 1   2   3   4   5
#    1   0   3   5   2   7   km
#    2   3   0   7   5   2
#    3   5   7   0   3   7
#    4   2   5   3   0   9
#    5   7   2   7   9   0

import random

def AG():

    matriz = [[  0,  3, 8, 15, 12],
              [  3,  0, 9, 11, 13],
              [  8,  9, 0,  5, 7],
              [ 15, 11, 5,  0, 8],
              [ 12, 13, 7,  8, 0]]

    geracoes = 20
    individuos = 100
    convergencia = 0.95

    populacao = [{'permutacao' : obter_permutacao(5), 'fitness' : 0} for i in range(individuos)]

    for individuo in populacao:
        individuo['fitness'] = obter_fitness(individuo['permutacao'], matriz)

    for i in range(0, geracoes):
        selecionados = seleciona(populacao, individuos//2)
        
        recombinacoes = crossover(populacao, matriz)

        nova_populacao = selecionados + recombinacoes

        nova_populacao.sort(key=lambda x: x['fitness'])

        populacao = nova_populacao[0:individuos:]

        fitnesses = [d['fitness'] for d in populacao]

        if (len([individuo for individuo in populacao if individuo['fitness'] == min(fitnesses)])/individuos > convergencia):
            break

    melhor_individuo = populacao[0]

def distancia_cidades(a, b, matriz):
    return matriz[a][b]

def obter_permutacao(tamanho):
    permutacao = []
    indices = [i+1 for i in range(5)]
    for i in range(0, tamanho):
        aleatoria = random.randint(0, len(indices)-1)
        permutacao.append(indices[aleatoria])
        indices.remove(indices[aleatoria])
    return permutacao

def obter_fitness(permutacao, matriz):
    f = 0
    for i in range(len(permutacao)-1):
        f = f + distancia_cidades(permutacao[i]-1, permutacao[i+1]-1, matriz)
    if(f == 4):
        a = 0
    return f

def seleciona(populacao, n):
    selecao = []
    pop = populacao.copy()
    for i in range(0,n):
        aleatorio = random.randint(0, len(pop)-1)
        selecao.append(pop[aleatorio])
        pop.remove(pop[aleatorio])
    return selecao

def crossover(selecao, matriz):
    selecao_copia = selecao.copy()
    recombinacoes = []
    for i in range(len(selecao_copia)//2):
        c1 = random.randint(0, len(selecao_copia)-1)
        cross1 = selecao[c1]['permutacao']
        selecao_copia.remove(selecao_copia[c1])
        c2 = random.randint(0, len(selecao_copia)-1)
        cross2 = selecao_copia[c2]['permutacao']
        selecao_copia.remove(selecao_copia[c2])
        tamanho_corte = random.randint(1, len(cross1)-1)
        filho1, filho2 = combina(cross1, cross2, tamanho_corte)
        fitness1 = obter_fitness(filho1, matriz)
        fitness2 = obter_fitness(filho2, matriz)
        recombinacoes.append({'fitness': fitness1, 'permutacao' : filho1})
        recombinacoes.append({'fitness': fitness2, 'permutacao' : filho2})
    if len(selecao_copia)%2 != 0:
        recombinacoes.append(selecao[random.randint(0,len(selecao)-1)])
    return recombinacoes
        

def combina(cross1, cross2, p):
    filho1 = cross1.copy()
    filho2 = cross2.copy()

    for i in range(0, p):
        filho1[i] = cross2[i]

    j = 0
    for i in range(p, len(cross2)):
        if filho1[i] in filho1[0:p:]:
            for w in range(j,len(cross1)):
                if not (cross1[w] in filho1):
                    filho1[i] = cross1[w]
                    break
            j = j+1

    for i in range(0, p):
        filho2[i] = cross1[i]

    j = 0
    for i in range(p, len(cross1)):
        if filho2[i] in filho2[0:p:]:
            for w in range(j,len(cross2)):
                if not (cross2[w] in filho2):
                    filho2[i] = cross2[w]
                    break
            j = j+1

    return filho1, filho2

AG()