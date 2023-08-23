programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia mapa [7][7]
    cadeia mov
    inteiro vidas = 3
    inteiro pontos = 0

    escreva ("Colete * para ganhar 100 pontos \nColete ♥ para ganhar vidas \nDesvie das mini bombinhas (•), você perderá vidas\nEvite colisões com a barreira, você perderá vidas \n\n" )
    // construindo o mapa com limitações
    para (inteiro i = 0;i<7;i++)
    {
      para (inteiro j = 0; j<7;j++)
      {
        se (i == 0 ou j == 0 ou i == 6 ou j ==6)
        {
          mapa[i][j] = "X"
        }
        senao 
        {
          mapa[i][j] = " "
        }
      }
    }

    // movimentação pelo jogo 
    inteiro x, y // x = linhas e y = colunas
    x = 1 
    y = 1 

    // definindo a posição inicial 
    mapa[x][y] = "⚘"

    // colocando os bônus e obstáculos
    inteiro a,b 
    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "♥"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "♥"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "•"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "•"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "•"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "•"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "•"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "*" 

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "*" 

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "*"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "*"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "*"

    a = u.sorteia(2,5)
    b = u.sorteia(2,5)
    mapa[a][b]= "*"


    faca 
    {
      escreva ("Pontos: ", pontos, "\n")
      escreva ("Vidas: ",vidas, "\n")
      para (inteiro i = 0;i<7;i++)
      {
        para (inteiro j = 0; j<7;j++)
        {
          escreva (mapa[i][j], " ")
        }
        escreva ("\n")
      }
      // movimentação pelo jogo usando a/s/d/w
      escreva ("Ande usando a/s/d/w!\n")
      leia (mov)

      mapa[x][y] = " "
      se (mov == "a")
      {
        y = y - 1 
      }
      se (mov == "s")
      {
        x = x + 1 
      }
      se (mov == "d")
      {
        y = y + 1 
      }
      se (mov == "w")
      {
        x = x - 1
      }
      se (x<1 ou x>5 ou y<1 ou y>5)
      {
        escreva ("Ops! Não saia das limitações do mapa! Você perdeu uma vida!")
        vidas = vidas - 1 
      }
      se (mapa[x][y] == "♥")
      {
        vidas = vidas + 1
      }
      se (mapa[x][y] == "*")
      {
        pontos = pontos + 100
      }
      se (mapa[x][y] == "•")
      {
        vidas = vidas - 1 
      }
      se (x<1)
      {
        x = x + 1
      }
      se (x>5)
      {
        x = x - 1
      }
      se (y<1)
      {
        y = y + 1 
      }
      se (y>5)
      {
        y = y - 1
      }
      mapa[x][y] = "⚘"
      limpa()
      se (pontos == 300)
      {
        escreva ("Parabéns, você venceu! ♥")
        pare
      }
    }enquanto (vidas>0)

    se (vidas<0)
    {
     escreva ("Poxa! Suas vidas acabaram! Reinicie para tentar outra vez! ")
    }
  }
}
