programa {
  funcao inicio() {
    inteiro n, a
    cadeia binario
    binario = " "
    escreva ("Insira um número decimal inteiro: ")
    leia (n)
    limpa()
    a=n
    faca
    {
      se (n%2 == 1)
      {
        binario = "1" + binario
      }
      senao se (n%2 == 0)
      {
        binario = "0" + binario 
      }
      n=n/2
    } enquanto (n>0)
    escreva ("O valor equivalente em binário do número ", a, " é: " ,binario)
  }
}
