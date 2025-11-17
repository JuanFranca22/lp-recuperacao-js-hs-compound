FROM haskell:9.6.3

WORKDIR /app

# Instalar dependências do sistema necessárias para stack/ghc
RUN apt-get update && apt-get install -y \
    libgmp-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

COPY . .

# Instala o GHC esperado pelo stack.yaml
RUN stack setup --install-ghc

# Build da aplicação
RUN stack build --copy-bins

# Expõe a porta usada pelo Scotty
EXPOSE 8080

CMD ["stack", "run"]
