(define (problem US3)
(:domain CARRIER)
(:objects Entrada 
          Espera
          PreConsulta
          Consultorio1
          Sanitarios1
          Consultorio2
          Consultorio3
          SalaDoacao
          Copa
          Escada
          CorredorPrincipal
          CorredorSecundario
          Cozinha
          Servico
          SalaVacinacao
          Geladeiras
          Almoxarifado
          Observacao
          CentroCirurgico
          Sanitarios2)
(:INIT (on Entrada) 
       (neighbour Entrada Espera)
       (neighbour Espera Consultorio1)
       (neighbour Espera Sanitarios1)
       (neighbour Espera Consultorio2)
       (neighbour Espera Consultorio3)
       (neighbour Espera Escada)
       (neighbour Espera Copa)
       (neighbour Espera PreConsulta)
       (neighbour Espera SalaDoacao)
       (neighbour Escada CorredorPrincipal)
       (neighbour CorredorPrincipal CorredorSecundario)
       (neighbour CorredorPrincipal SalaVacinacao)
       (neighbour CorredorPrincipal Servico)
       (neighbour CorredorPrincipal Cozinha)
       (neighbour CorredorPrincipal Sanitarios2)
       (neighbour CorredorSecundario Almoxarifado)
       (neighbour CorredorSecundario Observacao)
       (neighbour Almoxarifado Geladeiras)
       (neighbour Observacao CentroCirurgico))
(:goal (on Geladeiras)))