FROM nginx:1.19

# Install apache2-utils to get htpasswd command
RUN apt-get update -y &&  \
    apt-get install -y apache2-utils curl && \
    rm -rf /var/lib/apt/lists/*

# Basic auth credentials
ENV BASIC_USERNAME=username
ENV BASIC_PASSWORD=password

# Forward host and forward port as env variables
# google.com is used as a placeholder, to be replaced using environment variables
ENV BACKEND_SERVICE=http://google.com.com:80
ENV FRONTEND_ADDRESS=http://localhost:8080

# Nginx config file
WORKDIR /
# COPY nginx-basic-auth.conf nginx-basic-auth.conf
COPY nginx-basic-auth.conf  nginx-basic-auth.conf

# Startup script
COPY run.sh ./
RUN chmod 0755 ./run.sh
CMD [ "./run.sh" ]

EXPOSE 80