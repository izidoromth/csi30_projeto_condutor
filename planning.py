import requests, sys, os

path = "./problems/"
problems = [path + f for f in os.listdir(path) if os.path.isfile( os.path.join(path, f) )]

def get_user_input():
    print("Escolha uma das unidades de saúde para resolver:\n")
    [print(str(problems.index(problem)+1) + " - " + problem.split('.')[1].split('/')[2]) for problem in problems]
    print('')   
    print("Opção: ", end ='')
    return input()

def main():
    print("Problema da entrega interno de vacinas - Planning\n")

    c = get_user_input()
    while c != '':
        try:
            if(int(c) - 1 < 0 or int(c) > len(problems)):
                print("Unidade nao encontrada\n")
            else:
                data = {'domain': open("./domains/domain.pddl", 'r').read(),
                'problem': open(problems[int(c) - 1], 'r').read()}

                resp = requests.post('http://solver.planning.domains/solve', verify=False, json=data).json()

                if resp['status'] == 'error':
                    print('Plano nao encontrado\n')
                else:
                    print('')
                    [print(act['name']) for act in resp['result']['plan']]
                    print('')
        except:
            print('Insira o numero corresponde a US\n')

        c = get_user_input()
        

if __name__ == "__main__":
    main()