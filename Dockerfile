
FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

RUN rm -f index.nginx-debian.html

COPY index.html .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
