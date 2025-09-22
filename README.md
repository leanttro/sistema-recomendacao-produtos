# Sistema de Recomendação de Produtos com Machine Learning

## Visão Geral do Projeto

Este projeto implementa um sistema de recomendação de produtos utilizando técnicas de Machine Learning, aplicado ao dataset de e-commerce da Olist. O objetivo é ir além da análise descritiva e criar uma solução preditiva que possa, em um cenário real, aumentar o engajamento do cliente e o valor médio do carrinho de compras através de sugestões personalizadas.

Esta é uma expansão do projeto de análise de BI e Engenharia de Dados, demonstrando a capacidade de construir soluções de ponta a ponta, desde o ETL até a aplicação de modelos de Ciência de Dados.

## Problema de Negócio

Em um e-commerce com milhares de produtos, como podemos apresentar os itens mais relevantes para cada cliente de forma individual? Responder a essa pergunta é crucial para:
- Melhorar a experiência do usuário, tornando a navegação mais relevante.
- Aumentar a taxa de conversão e o ticket médio (cross-sell).
- Fomentar a lealdade do cliente, mostrando que a plataforma entende suas preferências.

## Solução Técnica

Foi implementado um sistema de **Filtragem Colaborativa (Collaborative Filtering)**, que se baseia no comportamento de compra dos usuários para fazer recomendações. A lógica central é: "clientes com históricos de compra semelhantes provavelmente gostarão de produtos semelhantes".

O modelo utiliza o algoritmo **SVD (Singular Value Decomposition)**, uma técnica de fatoração de matrizes que identifica padrões latentes nas interações entre clientes e produtos.

### Fluxo do Processo:
1.  **Preparação dos Dados:** Os dados de pedidos e itens são processados para criar uma matriz de interações, onde cada linha representa a compra de um produto por um cliente (rating implícito).
2.  **Treinamento do Modelo:** O algoritmo SVD é treinado com esses dados utilizando a biblioteca `scikit-surprise`.
3.  **Geração de Recomendações:** Uma função é criada para receber o ID de um cliente, prever as "notas" para os produtos que ele ainda não comprou e retornar os N produtos com as maiores notas previstas.

## Tecnologias Utilizadas

- **Linguagem:** Python 3
- **Bibliotecas Principais:** Pandas, scikit-surprise
- **Algoritmo:** SVD (Singular Value Decomposition)
- **Conceitos:** Machine Learning, Sistemas de Recomendação, Filtragem Colaborativa

## Como Executar o Projeto

1.  **Clone este repositório:**
    ```bash
    git clone [https://github.com/leanttro/sistema-recomendacao-produtos.git](https://github.com/leanttro/sistema-recomendacao-produtos.git)
    ```

2.  **Instale as dependências:**
    ```bash
    pip install pandas scikit-surprise
    ```

3.  **Execute o Notebook:**
    Abra e execute o Jupyter Notebook (`sistema_recomendacao.ipynb`) para ver o passo a passo do pré-processamento, treinamento do modelo e a geração de exemplos de recomendação.

## Autor

**Leanttro**

- LinkedIn: https://www.linkedin.com/in/leanttro/
- GitHub: https://github.com/leanttro
