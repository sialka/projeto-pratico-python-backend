FROM python:3.10.2-slim

RUN apt update && apt install -y --no-install-recommends \
      default-jre \
      git \
      zsh \
      curl \
      wget

# Criando usuario para o projeto
RUN useradd -ms /bin/bash python

USER python

WORKDIR /home/python/app

# incluindo o path do projeto no Python-Path
ENV PYTHONPATH=${PYTHONPATH}/home/python/app/src/
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-adm64

# Travando o container para não fechar
CMD [ "tail", "-f", "/dev/null" ]