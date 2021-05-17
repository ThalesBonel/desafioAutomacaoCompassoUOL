# language: pt
@end2end @buscar_produtos
Funcionalidade: Buscas no Automation Practice
  Como um cliente do site Automation Practice
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos

  @busca_sem_resultados
  Cenário: Busca sem resultados
    Quando buscar produto sem preencher o campo Search
    Entao deve aparecer a mensagem: 'Please enter a search keyword'
