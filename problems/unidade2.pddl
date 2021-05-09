(define (problem US2)
(:domain CARRIER)
(:objects Entrada 
          CorredorA 
          CorredorB 
          CorredorC
          Prontuario
          Espera
          Vacinacao
          Multiuso
          Inalacao
          PreConsulta
          Curativo
          ObsClinica
          Pediatria
          Ginecologista
          PCons
          ClinicaGeral
          Odontologia
          SalaMedica        
          Almoxarifado
          SanitariosA
          SanitariosB
          Copa
          DepLimpeza
          VestiariosA
          VestiariosB
          AreaServico
          SepLixo
          DepLixo)
(:INIT (on Entrada) 
       (neighbour Entrada CorredorA) 
       (neighbour Entrada CorredorB)
       (neighbour Entrada CorredorC)
       (neighbour CorredorA Prontuario)
       (neighbour CorredorA Espera)
       (neighbour CorredorA Prontuario)       
       (neighbour CorredorA Copa)
       (neighbour CorredorA VestiariosA)
       (neighbour CorredorA VestiariosB)
       (neighbour CorredorA AreaServico)
       (neighbour CorredorA SepLixo)
       (neighbour CorredorA DepLimpeza)
       (neighbour CorredorB Prontuario)
       (neighbour CorredorB SanitariosA)
       (neighbour CorredorB Odontologia)
       (neighbour CorredorB SalaMedica)
       (neighbour CorredorB Multiuso)
       (neighbour CorredorB Inalacao)
       (neighbour CorredorB PreConsulta)
       (neighbour CorredorB Curativo)
       (neighbour CorredorB Almoxarifado)
       (neighbour CorredorC Espera)
       (neighbour CorredorC SanitariosB)
       (neighbour CorredorC ClinicaGeral)
       (neighbour CorredorC PCons)
       (neighbour CorredorC Ginecologista)
       (neighbour CorredorC Pediatria)
       (neighbour CorredorC ObsClinica)
       (neighbour CorredorC Vacinacao))
(:goal (on Almoxarifado)))