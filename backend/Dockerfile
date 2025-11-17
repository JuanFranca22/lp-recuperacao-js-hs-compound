FROM haskell:latest
WORKDIR /app
COPY . .
RUN stack setup && stack build
CMD ["stack", "run"]
