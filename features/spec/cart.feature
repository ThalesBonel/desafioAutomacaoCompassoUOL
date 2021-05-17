# language: pt
@end2end
Funcionalidade: Adicionar produtos ao carrinho 
  Como um usuário do site Automation Practice
  Gostaria de adicionar produtos no carrinho
  Para avançar no processo de compra

@carrinho
Cenário: Adicionar produto ao carrinho
  Dado que esteja na página inicial
  Quando encontrar o 'dress' disponivel
  Então devo conseguir adicionar esse produto ao carrinho