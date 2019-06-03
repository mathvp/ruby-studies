# Encontre o Telefone
Solução do desafio *Encontre o telefone* em ***Ruby***.
Os testes foram realizados com [Rspec](https://github.com/rspec/rspec).

Desafio encontrado em: [DojoPuzzles](http://dojopuzzles.com/problemas/exibe/encontre-o-telefone/)

## Descrição do Problema
Em alguns lugares é comum lembrar um número do telefone associando seus dígitos a letras. Dessa maneira a expressão MY LOVE significa 69 5683. Claro que existem alguns problemas, uma vez que alguns números de telefone não formam uma palavra ou uma frase e os dígitos 1 e 0 não estão associados a nenhuma letra.

Sua tarefa é ler uma expressão e encontrar o número de telefone correspondente baseado na tabela abaixo. Uma expressão é composta por letras maiúsculas (A-Z), hifens (-) e os números 1 e 0.


```
Letras  ->  Número
ABC     ->  2
DEF     ->  3
GHI     ->  4
JKL     ->  5
MNO     ->  6
PQRS    ->  7
TUV     ->  8
WXYZ    ->  9
```

Para cada expressão você deve imprimir o número de telefone correspondente.

### Exemplos:
```
1-HOME-SWEET-HOME
Saída:
1-4663-79338-4663
```
```
MY-MISERABLE-JOB
Saída:
69-647372253-562
```
