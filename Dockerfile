# Dockerfile
# Use a imagem oficial do Python como base
FROM python:3.9-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de código da aplicação e o arquivo de dependências para dentro do contêiner
COPY app.py .
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 8080, para que possamos acessar a aplicação
EXPOSE 8080

# Comando para executar a aplicação dentro do contêiner
CMD ["python", "app.py"]
