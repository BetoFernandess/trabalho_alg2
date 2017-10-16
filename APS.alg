Algoritmo "APS"
// Disciplina  :  [Algoritmos II]
// Professor   : André Cotelli do Espírito Santo
// Descrição   : Trabalho da APS.
// Autor    : Gilberto Fernandes Alves e Matheus Ferreira Da Silva
// Data atual  : 20/09/2017
Tipo
    alunx = registro
    matricula:inteiro
    nome:caractere
    sexo:caractere
    idade:inteiro
Fimregistro


Var
   lista_alu: vetor [1..40] de alunx
   ind: inteiro

Funcao verifica_mat(ind, mat:inteiro):logico
Var
   temMat:logico
   i: inteiro
Inicio
      temMat <- falso
      para i de 1 ate ind faca
           se (lista_alu[i].matricula = mat) entao
              temMat <- verdadeiro
           fimse
      fimpara
      retorne temMat
Fimfuncao
Procedimento add_alu(i:inteiro)
   Var
      nomeAlu, sexoAlu: caractere
      idadeAlu, matAlu: inteiro
   Inicio
         se(i <= 40) entao
           escreval("UNICARIOCA - BANCO DE DADOS")
           escreval("")
           escreval("ADICIONAR USUÁRIO")
           escreval("")

           escreva("MATRICULA: ")
           leia(matAlu)
           enquanto (matAlu = "") entao
              escreval("MATRICULA VAZIA,TENTE DE NOVO")
              leia(matAlu)
           fimenquanto
           se(i <> 1) entao
                se(verifica_mat(i-1,matAlu)) entao
                             escreva("JÁ TEM ESSA MATRICULA, DIGITE DE NOVO!")
                             leia(matAlu)
                fimse
           fimse
           
           escreval("")
           escreva("NOME: ")
           leia(nomeAlu)
           se(nomeAlu = "") entao
                escreva("NOME VAZIO, DIGITE DE NOVO: ")
                leia(nomeAlu)
           fimse

           escreval("")
           escreva("IDADE: ")
           leia(idadeAlu)
           enquanto (idadeAlu <= 0) faca
                escreva("IDADE INCORRETA, TENTE DE NOVO: ")
                leia(idadeAlu)
           fimenquanto



           escreva("SEXO: ")
           leia(sexoAlu)
           sexoAlu <- maiusc(sexoAlu)
           enquanto ((sexoAlu <> "FEMININO") e (sexoAlu <> "MASCULINO")) faca
                       escreva("SEXO INCORRETO, TENTE DE NOVO: ")
                       leia(sexoAlu)
                       sexoAlu <- maiusc(sexoAlu)
           fimenquanto

           lista_alu[i].matricula <- matAlu
           lista_alu[i].nome <- nomeAlu
           lista_alu[i].sexo <- sexoAlu
           lista_alu[i].idade <- idadeAlu
           limpatela
         senao
           escreval("UNICARIOCA - BANCO DE DADOS")
           escreval("")
           escreval("LISTA CHEIA - ESVAZIE A LISTA")
           pausa
           limpatela
         fimse
Fimprocedimento

Funcao busca_seq(n:caractere,el:inteiro):logico

Var
   i:inteiro
   tem_na_lista:logico

Inicio
   para i de 1 ate el faca
        se (lista_alu[i].nome = n) entao
           tem_na_lista <-verdadeiro
        fimse
   fimpara
   retorne tem_na_lista
Fimfuncao

Procedimento busca(i:inteiro)
Var
   esc:inteiro

Inicio
   escreval("UNICARIOCA - BANCO DE DADOS")
   escreval("")
   escreval("PESQUISAR USUARIO")
   escreval("")
   escreval("[1] PESQUISA SEQUENCIAL")
   escreval("[2] PESQUISA BINÁRIA")
   leia(esc)
   escolha(esc)
               caso 1:

   fimescolha
Fimprocedimento

Inicio

   para ind de 1 ate 40 faca
        add_alu(ind)
   fimpara
Fimalgoritmo
