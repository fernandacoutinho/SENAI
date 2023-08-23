programa {
  funcao inicio() {
    real a,b
    caracter operador
    escreva ("Informe o primeiro valor:")
    leia (a)
    escreva ("Escolha o operador (+,-,*,/):")
    leia (operador)
    escreva ("Informe o segundo valor:")
    leia (b)
    se (operador == '+')
    {
     escreva ("Soma: ",a+b,"\n") 
    }
    senao se (operador == '-')
    {
     escreva ("Subtração: ",a-b,"\n")
    }
    senao se (operador == '*')
    {
     escreva ("Multiplicação: ",a*b,"\n")
    }
    senao se (operador == '/')
    {
     se (b==0)
      {
        escreva ("Não é possivel dividir um número por 0")
      }
      senao
      {
        escreva ("Divisão: ",a/b)
      }
    }
  }
}
