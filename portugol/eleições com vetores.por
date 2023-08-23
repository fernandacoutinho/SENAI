programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia candidatos [5]
    inteiro votos [5], op = 1
    votos[0] = 0
    votos[1] = 0
    votos[2] = 0
    votos[3] = 0
    votos[4] = 0
    real p = 0
    real parcial
    para (inteiro i = 0; i<5; i++)
    {
      escreva ("Insira o nome do candidato: \n")
      leia (candidatos[i])
      limpa()
    }

    limpa()

    faca
    {
      escreva ("Em qual candidato deseja votar? ")
      para (inteiro i = 0; i<5; i++)
      {
       escreva ("\nCandidato ", i+1, ": ", candidatos[i])
      }
      escreva ("\n")
      leia (op)

      se (op == 1)
      {
        votos[0] = votos[0] + 1 
      }
      senao se (op == 2)
      {
        votos[1] =  votos[1] + 1 
      }
      senao se (op == 3)
      {
        votos[2] = votos[2] + 1 
      }
      senao se (op == 4)
      {
        votos[3] = votos[3] + 1 
      }
      senao se (op == 5)
      {
        votos[4] = votos[4] + 1 
      }
      senao
      {
       limpa()
       escreva ("Voto inválido")
       u.aguarde (1000)
       limpa()
      }
      p = votos[0] + votos[1] + votos[2] + votos[3] + votos[4]
 
      escreva ("\n-------------------------------------\n")
      escreva ("Parcial: ")
      para (inteiro i = 0; i<5; i++)
      {
        escreva ("\nCandidato ", i+1, ": ", candidatos[i], " " , (votos[i]*100.0)/p , "%")
      }
      escreva ("\n-------------------------------------\n")
      u.aguarde (3000)
      limpa()
    }enquanto (op != 0)
  }
}
