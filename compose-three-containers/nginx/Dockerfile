FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update\
    && apt-get install -y nginx\
    && rm -rf /var/lib/apt/lists/*

RUN echo 'Bonjour Grenoble' > /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
