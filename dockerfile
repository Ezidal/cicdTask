FROM jenkins/ssh-agent:jdk17

# Установка Docker CLI и Docker Compose
USER root
RUN apt-get update && apt-get install -y \
    docker.io \
    docker-compose && \
    rm -rf /var/lib/apt/lists/*

# Обеспечиваем запуск SSH-сервера
CMD ["/usr/sbin/sshd", "-D"]
