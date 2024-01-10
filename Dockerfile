# Use a imagem base do Python
FROM python:3.8

# Configuração para evitar problemas com a escrita no buffer
ENV PYTHONUNBUFFERED 1

# Cria o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o conteúdo do diretório atual para o contêiner
COPY . /app

# Instala as dependências do Python
RUN pip install -r requirements.txt

# Comando padrão para iniciar o servidor Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]