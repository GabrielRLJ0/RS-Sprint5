#language: pt

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do AdvantageOnlineShopping
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

Contexto: Estar na página de um produto
    Dado que esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto

@change_color_pdp
Cenário: Trocar a cor do produto na PDP
    Quando alterar a cor do produto
    Então deverá alterar a imagem na PDP

@increase_product_quantity
Cenário: Aumentar a quantidade do produto na PDP
    Quando alterar a quantidade do produto
    Então deverá alterar a quantidade exibida na PDP