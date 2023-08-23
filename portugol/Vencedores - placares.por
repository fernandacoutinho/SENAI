programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia jogos[5][4] // cria uma matriz com 10 linhas e 4 colunas
    cadeia ganhador [5]
    para (inteiro i = 0; i < 5; i++)
    {  
      limpa()
      escreva ("Time A: \n")
      leia (jogos [i][0])
      escreva ("Gols do time A: \n")
      leia (jogos [i][1])
      escreva ("Time B: \n")
      leia (jogos [i][3])
      escreva ("Gols do time B: \n")
      leia (jogos [i][2])
    }

    para (inteiro i = 0; i < 5; i++)
    {
      se (jogos[i][1] > jogos[i][2])
      {
        ganhador [i] = (jogos [i][0])
      }
      senao se(jogos[i][1] == jogos[i][2])
      {
        ganhador [i]= "empate"
      }
      senao se (jogos[i][1] < jogos[i][2])
      {
        ganhador [i] = (jogos[i][3])
      }
    }
    limpa()
    para(inteiro i=0; i<5; i++)
    {
      escreva (jogos[i][0], " ", jogos[i][1], " x ", jogos[i][2]," ", jogos[i][3], " --> ",ganhador[i])
			escreva("\n")
    }
  }
}
