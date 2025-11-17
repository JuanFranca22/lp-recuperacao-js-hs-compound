FROM haskell:9.8

WORKDIR /app

COPY . .

# Configura o Stack para instalar o GHC necessário
RUN stack setup --install-ghc

# Build da aplicação
RUN stack build

EXPOSE 8080

CMD ["stack", "run"]
