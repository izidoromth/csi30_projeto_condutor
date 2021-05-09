(define (problem US4)
(:domain CARRIER)
(:objects AcessoPrincipal 
          AcessoEmergencia 
          AcessoPA
          Enfermaria1
          Enfermaria2
          Enfermaria3
          Enfermaria4
          Enfermaria5
          Enfermaria6
          Enfermaria7
          Enfermaria8
          Enfermaria9
          Enfermaria10
          Observacao
          RSuja
          RLimpa
          Refeitorio
          Cozinha
          Copa
          PostoEnfermagem
          Servico
          Expurgo
          Curativos
          CAM
          DML
          RS
          Jardim
          LabEnfermagem
          Posto
          EstabilizacaoUTI
          Ultrassom
          Almoxarifado
          Controle
          VestiarioMasculino
          VestiarioFeminino
          RecepcaoPrincipal
          ServicoSocial
          Consultorio1
          Consultorio2
          RaioX
          Higienizacao
          Reunioes
          ADM1
          ADM2
          AMD3
          ADM4
          Fraldario
          WCMasculino
          WCFeminino
          EsperaPrincipal
          EsperaPA
          RecepcaoPA
          Procedimentos
          Emergencia
          CorredorEnfermaria1          
          CorredorEnfermaria2
          CorredorEnfermaria
          CorredorPA
          CorredorEmergencia
          CorredorFuncionarios
          CorredorCentroCirurgico
          CorredorADM)
(:INIT (on AcessoPA) 
       (blocked EsperaPrincipal)
       (neighbour CorredorEnfermaria1 Enfermaria1)
       (neighbour CorredorEnfermaria1 Enfermaria2)
       (neighbour CorredorEnfermaria1 Enfermaria3)
       (neighbour CorredorEnfermaria1 Enfermaria4)
       (neighbour CorredorEnfermaria1 CorredorEnfermaria)
       (neighbour CorredorEnfermaria Enfermaria5)
       (neighbour CorredorEnfermaria CorredorEnfermaria2)
       (neighbour CorredorEnfermaria CorredorFuncionarios)
       (neighbour CorredorEnfermaria2 Enfermaria6)
       (neighbour CorredorEnfermaria2 Enfermaria7)
       (neighbour CorredorEnfermaria2 Enfermaria8)
       (neighbour CorredorEnfermaria2 Enfermaria9)
       (neighbour CorredorEnfermaria2 Enfermaria10)
       (neighbour CorredorEnfermaria2 Enfermaria5)   
       (neighbour CorredorEnfermaria2 Servico)
       (neighbour CorredorEnfermaria2 Expurgo)
       (neighbour CorredorEnfermaria2 Curativos)
       (neighbour CorredorEnfermaria2 CAM)
       (neighbour CorredorEnfermaria2 DML)
       (neighbour CorredorEnfermaria2 RS)
       (neighbour CorredorEnfermaria2 CorredorCentroCirurgico)
       (neighbour Servico PostoEnfermagem)
       (neighbour CorredorFuncionarios RSuja)
       (neighbour CorredorFuncionarios RLimpa)
       (neighbour CorredorFuncionarios Refeitorio)
       (neighbour CorredorFuncionarios Cozinha)
       (neighbour CorredorFuncionarios Copa)
       (neighbour CorredorFuncionarios Almoxarifado)
       (neighbour CorredorFuncionarios Controle)
       (neighbour EsperaPrincipal CorredorPA)
       (neighbour EsperaPrincipal AcessoPrincipal)
       (neighbour EsperaPrincipal CorredorEnfermaria)
       (neighbour EsperaPrincipal CorredorADM)
       (neighbour EsperaPrincipal Fraldario)   
       (neighbour EsperaPrincipal RecepcaoPrincipal)       
       (neighbour CorredorADM Reunioes)       
       (neighbour CorredorADM Reunioes)       
       (neighbour CorredorADM ADM1)       
       (neighbour CorredorADM ADM2)       
       (neighbour CorredorADM AMD3)              
       (neighbour CorredorADM ADM4)              
       (neighbour CorredorADM Reunioes)          
       (neighbour CorredorPA ServicoSocial)      
       (neighbour CorredorPA Consultorio1)      
       (neighbour CorredorPA Consultorio2)             
       (neighbour CorredorPA EsperaPA)      
       (neighbour CorredorPA CorredorEmergencia)      
       (neighbour AcessoPA RecepcaoPA)      
       (neighbour RecepcaoPA EsperaPA)      
       (neighbour CorredorEmergencia Procedimentos)
       (neighbour CorredorEmergencia Emergencia)
       (neighbour CorredorEmergencia AcessoEmergencia)
       (neighbour CorredorEmergencia CorredorCentroCirurgico)
       (neighbour CorredorCentroCirurgico LabEnfermagem)
       (neighbour CorredorCentroCirurgico Ultrassom)
       (neighbour CorredorCentroCirurgico EstabilizacaoUTI)
       (neighbour CorredorCentroCirurgico Higienizacao))
(:goal (on Almoxarifado)))