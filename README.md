# Atividade de Recuperação — LP JavaScript + Haskell (2025)

Este projeto implementa um sistema completo de **cálculo de juros compostos** usando:

- **Frontend:** HTML + JavaScript puro
- **Backend:** Haskell + Scotty + Aeson
- **Comunicação:** JSON via POST `/api/compound`
- **Deploy:** Frontend em Vercel/Netlify e backend em Render/Railway

## Como usar localmente
1. Backend (Haskell + Stack): entre em `backend/` e rode `stack setup && stack build && stack run` (ou use o Dockerfile).
2. Frontend: abra `frontend/index.html` em um navegador ou publique o diretório `frontend/` em Vercel/Netlify.

## Estrutura
- /backend: código Haskell (Scotty)
- /frontend: index.html (JS que consome a API)
- RECUP_LP_2025.md: identificação para submissão
- .gitignore
