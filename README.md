tividade 3 – Linguagens de Script
Projeto: Cálculo de Juros Compostos (Frontend + Backend)

Autor: Juan França Souza

📌 Descrição do Projeto

Este projeto implementa uma aplicação completa para cálculo de juros compostos, composta por:

Frontend em JavaScript, hospedado na Vercel

Backend em Haskell, responsável pelos cálculos matemáticos

Comunicação via HTTP (JSON) entre front e back

O objetivo da atividade é integrar duas linguagens diferentes, manipular formulários no frontend e criar uma API funcional no backend que realiza os cálculos solicitados.

🎯 Funcionalidade

O usuário informa:

Capital inicial (C)

Taxa de juros (i)

Tempo (t)

Base da taxa

O backend processa utilizando a fórmula:

𝑀=𝐶⋅(1+𝑖)𝑡
M=C⋅(1+i)
t

E retorna:

Montante final

Total de juros gerados

Valores estruturados em JSON

Arquitetura do Projeto

📦 atividade-3-ls-juan
 ┣ 📂 frontend  (JavaScript)
 ┣ 📂 backend   (Haskell)
 ┗ README.md

Frontend – JavaScript

✔ Hospedado na Vercel:

https://lp-recuperacao-js-hs-compound-ten.vercel.app/

Funções realizadas:

Formulário interativo

Validação dos campos

Envio via fetch() para o backend

Exibição dos resultados na tela

Exemplo de requisição:

fetch("https://URL-DO-BACKEND/compound", {
  method: "POST",
  headers: { "Content-Type": "application/json" },
  body: JSON.stringify({
    capital,
    taxa,
    tempo
  })
});

Backend – Haskell

O backend implementa:

Recebimento de JSON via POST

Conversão automática usando Aeson

Cálculo dos juros compostos

Retorno em JSON para o frontend

Servidor criado com Scotty

Exemplo de entrada:

{
  "capital": 1000,
  "taxa": 0.05,
  "tempo": 12
}

Exemplo de Saída:
{
  "montante": 1795.86,
  "juros": 795.86
}

Observação Importante Sobre o Deploy do Backend

O deploy do backend não pôde ser finalizado por limitações técnicas:

O Stack exige a instalação do GHC 9.6, que ocupa ~7 GB

A máquina local apresentou erro de "Espaço insuficiente no disco"

Plataformas como Render e Railway não suportaram a compilação completa do Stack dentro do ambiente gratuito

Apesar disso:

✔ O backend está implementado corretamente
✔ O frontend está funcionando e hospedado
✔ O backend pode ser rodado localmente quando houver espaço suficiente

Tecnologias Utilizadas
Frontend

HTML

CSS

JavaScript

Fetch API

Vercel

Backend

Haskell

Scotty

Aeson

Stack
